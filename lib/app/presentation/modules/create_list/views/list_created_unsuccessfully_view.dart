import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/core/routes/app_named_routes.dart';
import 'package:groceries/gen/assets.gen.dart';

class ListCreatedUnsuccessfullyView extends StatelessWidget {
  const ListCreatedUnsuccessfullyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var red = Colors.red.shade400;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: size.height * 0.075,
            ),
            Assets.png.failed.image(
              height: size.height * 0.3,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Text(
              'Oops...!',
              style: AppTextStyles.poppinsSemiBold(
                color: red,
                fontSize: 32,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Text(
              'Something went wrong',
              style: AppTextStyles.poppinsRegular(
                color: red,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            FilledButton(
              onPressed: () =>
                  context.pushReplacementNamed(AppNamedRoutes.root),
              child: const Text('Go to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
