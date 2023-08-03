part of '../create_list.dart';

class CreateNewListFAB extends StatelessWidget {
  const CreateNewListFAB({
    required this.onPressed,
    super.key,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onPressed,
      label: const NextArrowIcon(
        color: AppColors.white,
      ),
    );
  }
}
