part of 'widgets.dart';

class SliverSizedBox extends StatelessWidget {
  const SliverSizedBox({
    this.child,
    this.height,
    this.width,
    super.key,
  });

  final Widget? child;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: height,
        width: width,
        child: child,
      ),
    );
  }
}
