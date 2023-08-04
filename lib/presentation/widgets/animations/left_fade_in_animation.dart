part of '../widgets.dart';

class LeftFadeInAnimation extends StatefulWidget {
  LeftFadeInAnimation({
    required this.child,
    this.duration = const Duration(milliseconds: 800),
    this.delay = Duration.zero,
    this.controller,
    this.manualTrigger = false,
    this.animate = true,
    this.from = 100,
    super.key,
  }) {
    if (manualTrigger == true && controller == null) {
      throw FlutterError(
        '''
If you want to use manualTrigger: true, \n\n
Then you must provide the controller property, that is a callback like:\n\n
(controller: AnimationController) => yourController = controller \n\n.''',
      );
    }
  }

  final Widget child;
  final Duration duration;
  final Duration delay;
  final void Function(AnimationController)? controller;
  final bool manualTrigger;
  final bool animate;
  final double from;
  @override
  State<LeftFadeInAnimation> createState() => _LeftFadeInAnimationState();
}

class _LeftFadeInAnimationState extends State<LeftFadeInAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  bool disposed = false;
  late Animation<double> animation;
  late Animation<double> opacity;
  @override
  void dispose() {
    disposed = true;
    controller!.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );

    animation = Tween<double>(
      begin: widget.from * -1,
      end: 0,
    ).animate(
      CurvedAnimation(
        parent: controller!,
        curve: Curves.easeOut,
      ),
    );
    opacity = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: controller!,
        curve: const Interval(0, 0.65),
      ),
    );

    if (!widget.manualTrigger && widget.animate) {
      Future.delayed(
        widget.delay,
        () {
          if (!disposed) {
            controller?.forward();
          }
        },
      );
    }

    if (widget.controller is Function) {
      widget.controller!(controller!);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.animate && widget.delay.inMilliseconds == 0) {
      controller?.forward();
    }

    if (!widget.animate) {
      controller?.animateBack(0);
    }

    return AnimatedBuilder(
      animation: controller!,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(animation.value, 0),
          child: Opacity(
            opacity: opacity.value,
            child: widget.child,
          ),
        );
      },
    );
  }
}
