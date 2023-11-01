part of '../create_recipe.dart';

class CreateRecipeView extends StatelessWidget {
  const CreateRecipeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateRecipeBloc(
        context.read<CreateRecipeUseCase>(),
      ),
      child: const CreateRecipePage(),
    );
  }
}
