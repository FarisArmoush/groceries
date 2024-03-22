import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_route.dart';
import 'package:groceries/presentation/blocs/user_data/user_data_cubit.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/modules/root/bloc/root_navigation_bloc.dart';
import 'package:groceries/presentation/modules/update_email/bloc/update_email_bloc.dart';
import 'package:groceries/presentation/modules/update_email/widgets/submit_new_email_button.dart';
import 'package:groceries/presentation/modules/update_email/widgets/update_email_body_text.dart';
import 'package:groceries/presentation/modules/update_email/widgets/update_email_header_text.dart';
import 'package:groceries/presentation/modules/update_email/widgets/update_email_text_field.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/presentation/widgets/app_snack_bars.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries/utils/extenstions/hard_coded_extension.dart';

class UpdateEmailView extends StatelessWidget {
  const UpdateEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdateEmailBloc, UpdateEmailState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: listener,
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: ListView(
            shrinkWrap: true,
            padding: AppPaddings.scaffold(context),
            children: [
              const UpdateEmailHeaderText(),
              SizedBox(
                height: context.deviceHeight * 0.01,
              ),
              const UpdateEmailBodyText(),
              SizedBox(
                height: context.deviceHeight * 0.05,
              ),
              const UpdateEmailTextField(),
            ],
          ),
        ),
        bottomSheet: const SubmitNewEmailButton(),
      ),
    );
  }

  void listener(BuildContext context, UpdateEmailState state) {
    if (state.status.isSuccess) {
      context.read<RootNavigationBloc>().add(
            const RootNavigationEvent.navigateToIndex(0),
          );
      context.read<UserDataCubit>().loadUser();
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          AppSnackBars.success(
            message: 'Username Changed Successfully'.hardCoded,
          ),
        );
      context.pushReplacementNamed(AppRoute.root.name);
    }
    if (state.status.isFailure) {
      context.read<RootNavigationBloc>().add(
            const RootNavigationEvent.navigateToIndex(0),
          );
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          AppSnackBars.error(
            error: state.errorMessage ??
                'Failed to change username, Try again later'.hardCoded,
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
