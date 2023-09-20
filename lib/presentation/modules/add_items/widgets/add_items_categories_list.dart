part of '../add_items.dart';

class AddItemsCategoriesList extends StatelessWidget {
  const AddItemsCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddItemsBloc, AddItemsState>(
      buildWhen: (previous, current) =>
          previous.status != current.status ||
          previous.selectedCategory != current.selectedCategory,
      builder: (context, state) => switch (state.status) {
        AddItemsStatus.loading => const AppLoadingIndicator(),
        AddItemsStatus.error => Text(state.error).centered(),
        AddItemsStatus.success => _widget(context, state),
        _ => const SizedBox.shrink(),
      },
    );
  }

  Wrap _widget(BuildContext context, AddItemsState state) {
    return Wrap(
      spacing: context.deviceWidth * 0.01,
      runAlignment: WrapAlignment.spaceAround,
      runSpacing: context.deviceWidth * 0.025,
      children: state.categories.map(
        (category) {
          return GestureDetector(
            onTap: () => context.read<AddItemsBloc>().add(
                  SetActiveCategory(category.name),
                ),
            child: AnimatedContainer(
              duration: 50.milliseconds,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: category.name == state.selectedCategory
                    ? context.theme.primaryColorLight
                    : context.theme.hintColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                category.name,
                style: TextStyle(
                  fontFamily: AppFonts.semiBold(context),
                  fontSize: 12,
                  color: AppColors.white,
                  letterSpacing: 0.25,
                ),
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
