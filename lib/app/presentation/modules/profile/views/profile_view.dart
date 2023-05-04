import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/config/localization/app_translations.dart';
import 'package:groceries/app/config/routes/app_named_routes.dart';
import 'package:groceries/app/presentation/blocs/auth/auth_bloc.dart';
import 'package:groceries/app/presentation/modules/profile/widgets/logout_button.dart';
import 'package:groceries/app/presentation/modules/profile/widgets/profile_header/profile_header.dart';
import 'package:groceries/app/presentation/widgets/buttons/tile_button.dart';
import 'package:groceries/gen/assets.gen.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = context.watch<AuthBloc>().authRepo.currentUser;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox.shrink(),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 32,
        ),
        children: [
          ProfileHeader(
            imageUrl: user?.photoURL,
            displayName: user?.displayName,
            email: user?.email,
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
          FilledButton(
            onPressed: () => context.pushNamed(AppNamedRoutes.accountSettings),
            child: Text(
              AppTranslations.editProfileSettings,
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          TileButton(
            onTap: () {},
            icon: Assets.svg.icHeart,
            title: AppTranslations.favorites,
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          TileButton(
            onTap: () => context.pushNamed(AppNamedRoutes.settings),
            icon: Assets.svg.icSettings,
            title: AppTranslations.settings,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          const LogoutButton(),
        ],
      ),
    );
  }
}
