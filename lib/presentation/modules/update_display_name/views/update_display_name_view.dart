import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/config/routes/app_route.dart';
import 'package:groceries/presentation/blocs/user_data/user_data_cubit.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/modules/root/bloc/root_navigation_bloc.dart';
import 'package:groceries/presentation/modules/update_display_name/bloc/update_display_name_bloc.dart';
import 'package:groceries/presentation/modules/update_display_name/widgets/submit_new_display_name_button.dart';
import 'package:groceries/presentation/modules/update_display_name/widgets/update_display_name_body_text.dart';
import 'package:groceries/presentation/modules/update_display_name/widgets/update_display_name_header_text.dart';
import 'package:groceries/presentation/modules/update_display_name/widgets/update_display_name_text_field.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/presentation/widgets/app_snack_bars.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class UpdateDisplayNameView extends StatelessWidget {
  const UpdateDisplayNameView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdateDisplayNameBloc, UpdateDisplayNameState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: listener,
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: ListView(
            shrinkWrap: true,
            padding: AppPaddings.scaffold(context),
            children: [
              const UpdateDisplayNameHeaderText(),
              SizedBox(
                height: context.deviceHeight * 0.01,
              ),
              const UpdateDisplayNameBodyText(),
              SizedBox(
                height: context.deviceHeight * 0.05,
              ),
              const UpdateDisplayNameTextField(),
            ],
          ),
        ),
        bottomSheet: const SubmitNewDisplayNameButton(),
      ),
    );
  }

  void listener(BuildContext context, UpdateDisplayNameState state) {
    if (state.status.isSuccess) {
      context.read<RootNavigationBloc>().add(
            const RootNavigationEvent.navigateToIndex(0),
          );
      context.read<UserDataCubit>().loadUser();
      context.pop();
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          AppSnackBars.success(
            message: Translations.updateName.nameUpdatedSuccessfully,
          ),
        );
      context.pushReplacementNamed(AppRoute.root.name);
    }
    if (state.status.isFailure) {
      context.read<RootNavigationBloc>().add(
            const RootNavigationEvent.navigateToIndex(0),
          );
      context.pop();
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          AppSnackBars.error(
            error: state.errorMessage ?? Translations.errors.defaultError,
          ),
        );
      context.pushReplacementNamed(AppRoute.root.name);
    }
    if (state.status.isInProgress) {
      showDialog<AppLoadingIndicator>(
        context: context,
        builder: (context) => const AppLoadingIndicator.linear(),
        barrierDismissible: false,
      );
    }
  }
}
