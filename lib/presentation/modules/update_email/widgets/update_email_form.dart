import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/modules/update_email/cubit/update_email_cubit.dart';
import 'package:groceries/presentation/widgets/app_snackbars/app_snack_bars.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';
import 'package:groceries/presentation/widgets/buttons_loading_indicator.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/media_query_values.dart';

part '__submit_new_email_button.dart';
part '__update_email_body_text.dart';
part '__update_email_header_text.dart';
part '__update_email_text_field.dart';

class UpdateEmailForm extends StatelessWidget {
  const UpdateEmailForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdateEmailCubit, UpdateEmailState>(
      listener: (context, state) {
        if (state.status.isSuccess) {
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
      },
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 24,
            ),
            children: [
              const _UpdateEmailHeaderText(),
              SizedBox(
                height: context.deviceHeight * 0.01,
              ),
              const _UpdateEmailBodyText(),
              SizedBox(
                height: context.deviceHeight * 0.05,
              ),
              const _UpdateEmailTextField(),
            ],
          ),
        ),
        bottomSheet: const _SubmitNewEmailButton(),
      ),
    );
  }
}
