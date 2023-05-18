part of 'app_snack_bars.dart';

/// A widget for displaying a snackbar message.
class _SnackbarMessage extends StatelessWidget {
  /// Creates a [_SnackbarMessage] widget with the given [message].
  const _SnackbarMessage({
    required this.message,
  });

  /// The message to be displayed in the snackbar.
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
