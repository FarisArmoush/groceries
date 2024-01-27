part of '../update_display_name.dart';

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
