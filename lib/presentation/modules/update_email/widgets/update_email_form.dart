part of '../update_email.dart';

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
}
