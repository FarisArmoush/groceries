import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/core/routes/app_named_routes.dart';
import 'package:groceries/gen/assets.gen.dart';

class ListCreatedSuccessfullyView extends StatelessWidget {
  const ListCreatedSuccessfullyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var green = Colors.green.shade400;
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
            Assets.png.success.image(
              height: size.height * 0.3,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Text(
              'Well Done!',
              style: AppTextStyles.poppinsSemiBold(
                color: green,
                fontSize: 32,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Text(
              'Explore your list or something bitch ass motherfucker',
              style: AppTextStyles.poppinsRegular(
                color: green,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            FilledButton(
              onPressed: () {},
              style: Theme.of(context).filledButtonTheme.style?.copyWith(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.green,
                    ),
                  ),
              child: const Text('Go To <NAME> List'),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            OutlinedButton(
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
