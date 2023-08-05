part of '../home.dart';

class GreetingText extends StatelessWidget {
  const GreetingText({super.key});

  @override
  Widget build(BuildContext context) {
    final displayName = context
        .watch<AuthenticationBloc>()
        .authenticationRepository
        .currentUser!
        .displayName;

    return RichText(
      text: TextSpan(
        text: '${AppTranslations.homeGreeting} ',
        style: TextStyle(
          fontFamily: AppFonts.semiBold(context),
          color: context.theme.primaryColor,
          fontSize: 20,
        ),
        children: <TextSpan>[
          TextSpan(
            text: displayName,
            style: TextStyle(
              fontFamily: AppFonts.semiBold(context),
              color: context.theme.primaryColorLight,
              fontSize: 20,
            ),
          ),
          const TextSpan(text: ' !'),
        ],
      ),
    );
  }
}
