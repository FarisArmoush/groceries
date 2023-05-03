part of 'register_form.dart';

class _RegisterWithGoogleButton extends StatelessWidget {
  const _RegisterWithGoogleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            Assets.svg.icGoogle,
            height: size.height * 0.04,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            Assets.svg.icApple,
            height: size.height * 0.05,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}
