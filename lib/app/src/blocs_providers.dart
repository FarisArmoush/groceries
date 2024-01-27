part of '../app.dart';

class BlocsProviders extends StatelessWidget {
  const BlocsProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => VerifyUserBloc(
                context.read<VerifyUserUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => UpdateEmailBloc(
                context.read<UpdateEmailUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => UpdateDisplayNameBloc(
                context.read<UpdateDisplayNameUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => RegisterBloc(
                context.read<RegisterWithEmailAndPasswordUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => RootNavigationBloc(),
            ),
            BlocProvider(
              create: (context) => GroceryListsBloc(
                context.read<GroceryListsUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => MyTasksBloc(
                context.read<MyTasksUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => RecipesBloc(
                context.read<RecipesUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => RecipeDetailsBloc(),
            ),
            BlocProvider(
              create: (context) => OnboardingBloc(
                context.read<SharedPreferences>(),
              ),
            ),
            BlocProvider(
              create: (context) => LoginBloc(
                context.read<LoginWithEmailAndPasswordUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => DeleteListBloc(
                context.read<DeleteGroceryListUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => RemoveMemberFromListBloc(
                context.read<RemoveMemberFromListUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => UpdateListImageBloc(
                context.read<UpdateListImageUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => UpdateListNameBloc(
                context.read<UpdateListNameUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => ForgotPasswordBloc(
                context.read<SendPasswordResetEmailUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => DeleteAccountBloc(
                context.read<DeleteAccountUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => CreateRecipeBloc(
                context.read<CreateRecipeUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => CreateListBloc(
                context.read<CreateListUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => CategoryDetailsBloc(
                context.read<FetchSubCategoriesUseCase>(),
                context.read<FetchCategoryItemsUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => AddItemsBloc(
                context.read<FetchParentCategoriesUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => SendCrashReportsCubit(),
            ),
            BlocProvider(
              create: (context) => AuthenticationBloc(
                context.read<AuthenticationRepository>(),
              ),
            ),
            BlocProvider(
              create: (context) => ThemeCubit(
                context.read<SharedPreferences>(),
              )..loadTheme(),
            ),
            BlocProvider(
              create: (context) => RemoteConfigBloc(
                context.read<RemoteConfigUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => UserDataCubit(
                context.read<FetchUserDataUseCase>(),
              ),
            ),
            BlocProvider(
              create: (context) => LogoutBloc(
                context.read<LogoutUseCase>(),
              ),
            ),
          ],
          child: const AppEasyLocalization(),
        );
      },
    );
  }
}
