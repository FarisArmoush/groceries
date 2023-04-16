import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class StaggeredListAnimation extends StatelessWidget {
  const StaggeredListAnimation({
    required this.widgetsList,
    Key? key,
    this.duration,
  }) : super(key: key);

  final List<Widget> widgetsList;
  final Duration? duration;

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: widgetsList.length,
        padding: const EdgeInsets.all(32),
        itemBuilder: (BuildContext context, int index) {
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: duration ?? const Duration(milliseconds: 500),
            child: SlideAnimation(
              child: FadeInAnimation(
                child: widgetsList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
