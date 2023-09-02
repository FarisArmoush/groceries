part of '../../home.dart';

class MyTasksShimmeredRail extends StatelessWidget {
  const MyTasksShimmeredRail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        LeftFadeInAnimation(
          child: ShimmerSkeleton(
            height: context.deviceHeight * 0.015,
            width: context.deviceWidth * 0.4,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        SizedBox(
          height: context.deviceHeight * 0.025,
        ),
        ListView.separated(
          itemCount: 3,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return LeftFadeInAnimation(
              duration: (500 + (index * 200)).milliseconds,
              child: const MyTasksShimmeredCard(),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: context.deviceHeight * 0.01,
            );
          },
        ),
      ],
    );
  }
}
