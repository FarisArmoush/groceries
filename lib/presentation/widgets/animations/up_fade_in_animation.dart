part of '../widgets.dart';

class UpFadeInAnimation extends StatefulWidget {
  UpFadeInAnimation({
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
  State<UpFadeInAnimation> createState() => _UpFadeInAnimationState();
}

class _UpFadeInAnimationState extends State<UpFadeInAnimation>
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
      begin: widget.from,
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

    /// If FALSE, animate everything back to the original state
    if (!widget.animate) {
      controller?.animateBack(0);
    }

    return AnimatedBuilder(
      animation: controller!,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, animation.value),
          child: Opacity(
            opacity: opacity.value,
            child: widget.child,
          ),
        );
      },
    );
  }
}
