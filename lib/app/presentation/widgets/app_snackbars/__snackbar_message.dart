part of 'app_snack_bars.dart';

class _SnackbarMessage extends StatelessWidget {
  const _SnackbarMessage({
    required this.message,
    Key? key,
  }) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Text(
        message,
        style: AppTextStyles.poppinsRegular(
          color: ColorConstants.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
