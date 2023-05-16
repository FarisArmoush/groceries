part of 'app_snack_bars.dart';

class _SnackbarMessage extends StatelessWidget {
  const _SnackbarMessage({
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Text(
        message,
        style: TextStyle(
          fontFamily: AppFonts.regular(context),
          color: AppColors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
