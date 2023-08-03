part of '../create_recipe.dart';

class CreateRecipeView extends StatelessWidget {
  const CreateRecipeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreateRecipeBloc>(
      create: (context) => CreateRecipeBloc(),
      child: const CreateRecipeForm(),
    );
  }
}
