part of '../add_items.dart';

class AddItemsCategoriesList extends StatelessWidget {
  const AddItemsCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddItemsBloc, AddItemsState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) => switch (state.status) {
        AddItemsStatus.initial => const AppLoadingIndicator(),
        AddItemsStatus.loading => const AppLoadingIndicator(),
        AddItemsStatus.error => Text(state.error).centered(),
        AddItemsStatus.success => _widget(context, state),
      },
    );
  }

  Wrap _widget(BuildContext context, AddItemsState state) {
    return Wrap(
      spacing: context.deviceWidth * 0.015,
      runAlignment: WrapAlignment.spaceAround,
      runSpacing: context.deviceWidth * 0.015,
      children: state.categories.map(
        (category) {
          return GestureDetector(
            onTap: () {
              context.read<AddItemsBloc>().add(SetActiveCategory(category));
            },
            child: AnimatedContainer(
              duration: 100.milliseconds,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: category == state.selectedCategory
                    ? context.theme.primaryColorLight
                    : context.theme.hintColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                category,
                style: TextStyle(
                  fontFamily: AppFonts.semiBold(context),
                  fontSize: 12,
                  color: AppColors.white,
                ),
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
