part of '../update_display_name.dart';

class UpdateDisplayNameView extends StatelessWidget {
  const UpdateDisplayNameView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpdateDisplayNameBloc(
        context.read<UpdateDisplayNameUseCase>(),
      ),
      child: const UpdateDisplayNameForm(),
    );
  }
}
