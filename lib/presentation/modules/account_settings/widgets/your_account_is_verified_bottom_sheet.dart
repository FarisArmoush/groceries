part of '../account_settings.dart';

class YourAccountIsVerifiedBottomSheet extends StatelessWidget {
  const YourAccountIsVerifiedBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.bottomSheetPadding(context),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.svg.illCelebrating.svg(
            height: context.deviceHeight * 0.2,
          ),
          SizedBox(
            height: context.deviceHeight * 0.03,
          ),
          Text(
            AppTranslations.verifyAccount.yourAccountIsVerified,
            style: context.theme.dialogTheme.titleTextStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: context.deviceHeight * 0.03,
          ),
        ],
      ),
    );
  }
}
