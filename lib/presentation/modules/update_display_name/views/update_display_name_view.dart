import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
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
      listener: listener,
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: ListView(
            shrinkWrap: true,
            padding: AppPaddings.scaffoldPadding(context),
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
      context.pop();
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          AppSnackBars.success(
            message: 'Username Changed Successfully',
          ),
        );
      context.pushReplacementNamed(AppNamedRoutes.root);
    }
    if (state.status.isFailure) {
      context.pop();
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          AppSnackBars.error(
            error: state.errorMessage ??
                'Failed to change username, Try again later',
          ),
        );
      context.pushReplacementNamed(AppNamedRoutes.root);
    }
    if (state.status.isInProgress) {
      showDialog<AppLoadingIndicator>(
        context: context,
        builder: (context) => const AppLoadingIndicator(),
        barrierDismissible: false,
      );
    }
  }
}
