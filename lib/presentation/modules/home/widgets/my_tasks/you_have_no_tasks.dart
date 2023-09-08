part of '../../home.dart';

class YouHaveNoTasks extends StatelessWidget {
  const YouHaveNoTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.svg.illBirdWatching.svg(
          height: context.deviceHeight * 0.2,
        ),
        SizedBox(
          height: context.deviceHeight * 0.015,
        ),
        Text(
          AppTranslations.home.youDontHaveTasks,
          style: TextStyle(
            fontFamily: AppFonts.medium(context),
            fontSize: 16,
            color: context.theme.primaryColor,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
