part of '../add_items.dart';

class AddItemsTextField extends StatelessWidget {
  const AddItemsTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddItemsBloc, AddItemsState>(
      builder: (context, state) {
        return state.status.maybeWhen(
          initial: SizedBox.shrink,
          loading: AppLoadingIndicator.new,
          failure: (_) => const SizedBox.shrink(),
          orElse: SizedBox.shrink,
          success: () => Material(
            color: CupertinoColors.systemGrey5,
            borderRadius: BorderRadius.circular(9),
            child: AppTextField(
              style: TextStyle(
                fontFamily: AppFonts.semiBold(context),
                color: AppColors.black,
                fontSize: 14,
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              labelStyle: TextStyle(
                fontFamily: AppFonts.medium(context),
                color: AppColors.black,
                fontSize: 14,
              ),
              floatingLabelStyle: TextStyle(
                fontFamily: AppFonts.medium(context),
                color: AppColors.black,
                fontSize: 16,
              ),
              prefixIcon: const Icon(
                CupertinoIcons.search,
                color: AppColors.black,
              ),
              labelText: "What're you looking for?",
              disabledBorder: InputBorder.none,
              border: InputBorder.none,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
            ),
          ),
        );
      },
    ).allPadding(16);
  }
}
