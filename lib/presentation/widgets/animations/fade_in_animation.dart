// ignore_for_file: lines_longer_than_80_chars

part of 'app_animations.dart';

class FadeInAnimation extends StatefulWidget {
  FadeInAnimation({
    required this.child,
    this.duration = const Duration(milliseconds: 500),
    this.delay = Duration.zero,
    this.controller,
    this.manualTrigger = false,
    this.animate = true,
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
  // ignore: inference_failure_on_function_return_type
  final Function(AnimationController)? controller;
  final bool manualTrigger;
  final bool animate;

  @override
  State<FadeInAnimation> createState() => _FadeInAnimationState();
}

class _FadeInAnimationState extends State<FadeInAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;

  bool disposed = false;

  late Animation<double> animation;

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
    animation = CurvedAnimation(
      curve: Curves.easeOut,
      parent: controller!,
    );

    if (!widget.manualTrigger && widget.animate) {
      Future.delayed(widget.delay, () {
        if (!disposed) {
          controller?.forward();
        }
      });
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
      animation: animation,
      builder: (context, child) {
        return Opacity(
          opacity: animation.value,
          child: widget.child,
        );
      },
    );
  }
}
