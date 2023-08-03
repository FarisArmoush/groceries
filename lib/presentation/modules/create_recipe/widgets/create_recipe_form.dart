part of '../create_recipe.dart';

class CreateRecipeForm extends StatelessWidget {
  const CreateRecipeForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create New Recipe'),
      ),
      body: const Center(
        child: Text('Create Recipe View is Working!'),
      ),
    );
  }
}
