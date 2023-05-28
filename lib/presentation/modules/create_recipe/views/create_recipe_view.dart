import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/modules/create_recipe/bloc/create_recipe_bloc.dart';
import 'package:groceries/presentation/modules/create_recipe/widgets/create_recipe_form.dart';

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
