// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:groceries/data/data_sources/authentication_data_source.dart'
    as _i3;
import 'package:groceries/data/data_sources/base_groceries_data_source.dart'
    as _i6;
import 'package:groceries/data/data_sources/categories_data_source.dart' as _i9;
import 'package:groceries/data/data_sources/grocery_list_details_data_source.dart'
    as _i17;
import 'package:groceries/data/data_sources/grocery_lists_data_source.dart'
    as _i20;
import 'package:groceries/data/data_sources/my_tasks_data_source.dart' as _i26;
import 'package:groceries/data/data_sources/recipe_details_data_source.dart'
    as _i30;
import 'package:groceries/data/data_sources/recipes_data_source.dart' as _i33;
import 'package:groceries/data/data_sources/remote_config_data_source.dart'
    as _i38;
import 'package:groceries/data/repositories/authentication_repository_impl.dart'
    as _i5;
import 'package:groceries/data/repositories/base_groceries_repository_impl.dart'
    as _i8;
import 'package:groceries/data/repositories/categories_repository_impl.dart'
    as _i11;
import 'package:groceries/data/repositories/grocery_list_details_repository_impl.dart'
    as _i19;
import 'package:groceries/data/repositories/grocery_lists_repository_impl.dart'
    as _i22;
import 'package:groceries/data/repositories/my_tasks_repository_impl.dart'
    as _i28;
import 'package:groceries/data/repositories/recipe_details_repository_impl.dart'
    as _i32;
import 'package:groceries/data/repositories/recipes_repository_impl.dart'
    as _i35;
import 'package:groceries/data/repositories/remote_config_repository_impl.dart'
    as _i40;
import 'package:groceries/domain/repositories/authentication_repository.dart'
    as _i4;
import 'package:groceries/domain/repositories/base_groceries_repository.dart'
    as _i7;
import 'package:groceries/domain/repositories/cateogries_repository.dart'
    as _i10;
import 'package:groceries/domain/repositories/grocery_list_details_repository.dart'
    as _i18;
import 'package:groceries/domain/repositories/grocery_lists_repository.dart'
    as _i21;
import 'package:groceries/domain/repositories/my_tasks_repository.dart' as _i27;
import 'package:groceries/domain/repositories/recipe_details_repository.dart'
    as _i31;
import 'package:groceries/domain/repositories/recipes_repository.dart' as _i34;
import 'package:groceries/domain/repositories/remote_config_repository.dart'
    as _i39;
import 'package:groceries/domain/use_cases/authentication_use_cases/delete_account_use_case.dart'
    as _i12;
import 'package:groceries/domain/use_cases/authentication_use_cases/fetch_user_data_use_case.dart'
    as _i16;
import 'package:groceries/domain/use_cases/authentication_use_cases/login_with_email_and_password_use_case.dart'
    as _i24;
import 'package:groceries/domain/use_cases/authentication_use_cases/logout_use_case.dart'
    as _i25;
import 'package:groceries/domain/use_cases/authentication_use_cases/register_with_email_and_password_use_case.dart'
    as _i37;
import 'package:groceries/domain/use_cases/authentication_use_cases/send_password_reset_email_use_case.dart'
    as _i46;
import 'package:groceries/domain/use_cases/authentication_use_cases/update_display_name_use_case.dart'
    as _i48;
import 'package:groceries/domain/use_cases/authentication_use_cases/update_email_use_case.dart'
    as _i49;
import 'package:groceries/domain/use_cases/authentication_use_cases/verify_user_use_case.dart'
    as _i53;
import 'package:groceries/domain/use_cases/remote_use_cases/add_item_to_list_use_case.dart'
    as _i54;
import 'package:groceries/domain/use_cases/remote_use_cases/clear_grocery_list_items_use_case.dart'
    as _i58;
import 'package:groceries/domain/use_cases/remote_use_cases/create_list_use_case.dart'
    as _i59;
import 'package:groceries/domain/use_cases/remote_use_cases/create_recipe_use_case.dart'
    as _i60;
import 'package:groceries/domain/use_cases/remote_use_cases/delete_grocery_list_use_case.dart'
    as _i62;
import 'package:groceries/domain/use_cases/remote_use_cases/delete_recipe_use_case.dart'
    as _i63;
import 'package:groceries/domain/use_cases/remote_use_cases/fetch_category_items_use_case.dart'
    as _i13;
import 'package:groceries/domain/use_cases/remote_use_cases/fetch_grocery_list_details_use_case.dart'
    as _i64;
import 'package:groceries/domain/use_cases/remote_use_cases/fetch_my_tasks_use_case.dart'
    as _i65;
import 'package:groceries/domain/use_cases/remote_use_cases/fetch_parent_categories_use_case.dart'
    as _i14;
import 'package:groceries/domain/use_cases/remote_use_cases/fetch_recipe_details_use_case.dart'
    as _i66;
import 'package:groceries/domain/use_cases/remote_use_cases/fetch_sub_categories_use_case.dart'
    as _i15;
import 'package:groceries/domain/use_cases/remote_use_cases/grocery_lists_use_case.dart'
    as _i23;
import 'package:groceries/domain/use_cases/remote_use_cases/recipes_use_case.dart'
    as _i36;
import 'package:groceries/domain/use_cases/remote_use_cases/remote_config_use_case.dart'
    as _i41;
import 'package:groceries/domain/use_cases/remote_use_cases/remove_item_from_list_use_case.dart'
    as _i42;
import 'package:groceries/domain/use_cases/remote_use_cases/remove_member_from_list_use_case.dart'
    as _i43;
import 'package:groceries/domain/use_cases/remote_use_cases/update_list_image_use_case.dart'
    as _i50;
import 'package:groceries/domain/use_cases/remote_use_cases/update_list_name_use_case.dart'
    as _i51;
import 'package:groceries/presentation/blocs/authentication/authentication_bloc.dart'
    as _i56;
import 'package:groceries/presentation/blocs/grocery_lists/grocery_lists_bloc.dart'
    as _i69;
import 'package:groceries/presentation/blocs/logout/logout_bloc.dart' as _i71;
import 'package:groceries/presentation/blocs/my_tasks/my_tasks_bloc.dart'
    as _i72;
import 'package:groceries/presentation/blocs/remote_config/remote_config_bloc.dart'
    as _i76;
import 'package:groceries/presentation/blocs/user_data/user_data_cubit.dart'
    as _i52;
import 'package:groceries/presentation/modules/add_items/bloc/add_items_bloc.dart'
    as _i55;
import 'package:groceries/presentation/modules/additional_resources/cubit/send_crash_reports_cubit.dart'
    as _i45;
import 'package:groceries/presentation/modules/category_details/bloc/category_details_bloc.dart'
    as _i57;
import 'package:groceries/presentation/modules/create_list/bloc/create_list_bloc.dart'
    as _i80;
import 'package:groceries/presentation/modules/create_recipe/bloc/create_recipe_bloc.dart'
    as _i81;
import 'package:groceries/presentation/modules/delete_account/bloc/delete_account_bloc.dart'
    as _i61;
import 'package:groceries/presentation/modules/forgot_password/bloc/forgot_password_bloc.dart'
    as _i67;
import 'package:groceries/presentation/modules/grocery_list_details/bloc/grocery_list_details_bloc.dart'
    as _i68;
import 'package:groceries/presentation/modules/login/bloc/login_bloc.dart'
    as _i70;
import 'package:groceries/presentation/modules/onboarding/bloc/onboarding_bloc.dart'
    as _i29;
import 'package:groceries/presentation/modules/recipe_details/bloc/recipe_details_bloc.dart'
    as _i73;
import 'package:groceries/presentation/modules/recipes/bloc/recipes_bloc.dart'
    as _i74;
import 'package:groceries/presentation/modules/register/bloc/register_bloc.dart'
    as _i75;
import 'package:groceries/presentation/modules/root/bloc/root_navigation_bloc.dart'
    as _i44;
import 'package:groceries/presentation/modules/theme_settings/cubit/theme_cubit.dart'
    as _i47;
import 'package:groceries/presentation/modules/update_display_name/bloc/update_display_name_bloc.dart'
    as _i77;
import 'package:groceries/presentation/modules/update_email/bloc/update_email_bloc.dart'
    as _i78;
import 'package:groceries/presentation/modules/verify_user/bloc/verify_user_bloc.dart'
    as _i79;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.AuthenticationDataSource>(
        const _i3.AuthenticationDataSource());
    gh.singleton<_i4.AuthenticationRepository>(
        _i5.AuthenticationRepositoryImpl(gh<_i3.AuthenticationDataSource>()));
    gh.singleton<_i6.BaseGroceriesDataSource>(
        const _i6.BaseGroceriesDataSource());
    gh.singleton<_i7.BaseGroceriesRepository>(
        _i8.BaseGroceriesRepositoryImpl(gh<_i6.BaseGroceriesDataSource>()));
    gh.singleton<_i9.CategoriesDataSource>(const _i9.CategoriesDataSource());
    gh.singleton<_i10.CategoriesRepository>(
        _i11.CategoriesRepositoryImpl(gh<_i9.CategoriesDataSource>()));
    gh.factory<_i12.DeleteAccountUseCase>(
        () => _i12.DeleteAccountUseCase(gh<_i4.AuthenticationRepository>()));
    gh.factory<_i13.FetchCategoryItemsUseCase>(() =>
        _i13.FetchCategoryItemsUseCase(gh<_i7.BaseGroceriesRepository>()));
    gh.factory<_i14.FetchParentCategoriesUseCase>(() =>
        _i14.FetchParentCategoriesUseCase(gh<_i10.CategoriesRepository>()));
    gh.factory<_i15.FetchSubCategoriesUseCase>(
        () => _i15.FetchSubCategoriesUseCase(gh<_i10.CategoriesRepository>()));
    gh.factory<_i16.FetchUserDataUseCase>(
        () => _i16.FetchUserDataUseCase(gh<_i4.AuthenticationRepository>()));
    gh.singleton<_i17.GroceryListDetailsDataSource>(
        _i17.GroceryListDetailsDataSource());
    gh.singleton<_i18.GroceryListDetailsRepository>(
        _i19.GroceryListDetailsRepositoryImpl(
            gh<_i17.GroceryListDetailsDataSource>()));
    gh.singleton<_i20.GroceryListsDataSource>(
        const _i20.GroceryListsDataSource());
    gh.singleton<_i21.GroceryListsRepository>(
        _i22.GroceryListsRepositoryImpl(gh<_i20.GroceryListsDataSource>()));
    gh.factory<_i23.GroceryListsUseCase>(
        () => _i23.GroceryListsUseCase(gh<_i21.GroceryListsRepository>()));
    gh.factory<_i24.LoginWithEmailAndPasswordUseCase>(() =>
        _i24.LoginWithEmailAndPasswordUseCase(
            gh<_i4.AuthenticationRepository>()));
    gh.factory<_i25.LogoutUseCase>(
        () => _i25.LogoutUseCase(gh<_i4.AuthenticationRepository>()));
    gh.singleton<_i26.MyTasksDataSource>(const _i26.MyTasksDataSource());
    gh.singleton<_i27.MyTasksRepository>(
        _i28.MyTasksRepositoryImpl(gh<_i26.MyTasksDataSource>()));
    gh.factory<_i29.OnboardingBloc>(() => _i29.OnboardingBloc());
    gh.singleton<_i30.RecipeDetailsDataSource>(_i30.RecipeDetailsDataSource());
    gh.singleton<_i31.RecipeDetailsRepository>(
        _i32.RecipeDetailsRepositoryImpl(gh<_i30.RecipeDetailsDataSource>()));
    gh.singleton<_i33.RecipesDataSource>(const _i33.RecipesDataSource());
    gh.singleton<_i34.RecipesRepository>(
        _i35.RecipesRepositoryImpl(gh<_i33.RecipesDataSource>()));
    gh.factory<_i36.RecipesUseCase>(
        () => _i36.RecipesUseCase(gh<_i34.RecipesRepository>()));
    gh.factory<_i37.RegisterWithEmailAndPasswordUseCase>(() =>
        _i37.RegisterWithEmailAndPasswordUseCase(
            gh<_i4.AuthenticationRepository>()));
    gh.singleton<_i38.RemoteConfigDataSource>(
        const _i38.RemoteConfigDataSource());
    gh.singleton<_i39.RemoteConfigRepository>(
        _i40.RemoteConfigRepositoryImpl(gh<_i38.RemoteConfigDataSource>()));
    gh.factory<_i41.RemoteConfigUseCase>(
        () => _i41.RemoteConfigUseCase(gh<_i39.RemoteConfigRepository>()));
    gh.factory<_i42.RemoveItemFromListUseCase>(() =>
        _i42.RemoveItemFromListUseCase(
            gh<_i18.GroceryListDetailsRepository>()));
    gh.factory<_i43.RemoveMemberFromListUseCase>(() =>
        _i43.RemoveMemberFromListUseCase(
            gh<_i18.GroceryListDetailsRepository>()));
    gh.factory<_i44.RootNavigationBloc>(() => _i44.RootNavigationBloc());
    gh.factory<_i45.SendCrashReportsCubit>(() => _i45.SendCrashReportsCubit());
    gh.factory<_i46.SendPasswordResetEmailUseCase>(() =>
        _i46.SendPasswordResetEmailUseCase(gh<_i4.AuthenticationRepository>()));
    gh.factory<_i47.ThemeCubit>(() => _i47.ThemeCubit());
    gh.factory<_i48.UpdateDisplayNameUseCase>(() =>
        _i48.UpdateDisplayNameUseCase(gh<_i4.AuthenticationRepository>()));
    gh.factory<_i49.UpdateEmailUseCase>(
        () => _i49.UpdateEmailUseCase(gh<_i4.AuthenticationRepository>()));
    gh.factory<_i50.UpdateListImageUseCase>(() =>
        _i50.UpdateListImageUseCase(gh<_i18.GroceryListDetailsRepository>()));
    gh.factory<_i51.UpdateListNameUseCase>(() =>
        _i51.UpdateListNameUseCase(gh<_i18.GroceryListDetailsRepository>()));
    gh.lazySingleton<_i52.UserDataCubit>(
        () => _i52.UserDataCubit(gh<_i16.FetchUserDataUseCase>()));
    gh.factory<_i53.VerifyUserUseCase>(
        () => _i53.VerifyUserUseCase(gh<_i4.AuthenticationRepository>()));
    gh.factory<_i54.AddItemToListUseCase>(() =>
        _i54.AddItemToListUseCase(gh<_i18.GroceryListDetailsRepository>()));
    gh.factory<_i55.AddItemsBloc>(
        () => _i55.AddItemsBloc(gh<_i14.FetchParentCategoriesUseCase>()));
    gh.lazySingleton<_i56.AuthenticationBloc>(
        () => _i56.AuthenticationBloc(gh<_i4.AuthenticationRepository>()));
    gh.factory<_i57.CategoryDetailsBloc>(() => _i57.CategoryDetailsBloc(
          gh<_i15.FetchSubCategoriesUseCase>(),
          gh<_i13.FetchCategoryItemsUseCase>(),
        ));
    gh.factory<_i58.ClearGroceryListItemsUseCase>(() =>
        _i58.ClearGroceryListItemsUseCase(
            gh<_i18.GroceryListDetailsRepository>()));
    gh.factory<_i59.CreateListUseCase>(
        () => _i59.CreateListUseCase(gh<_i21.GroceryListsRepository>()));
    gh.factory<_i60.CreateRecipeUseCase>(
        () => _i60.CreateRecipeUseCase(gh<_i34.RecipesRepository>()));
    gh.factory<_i61.DeleteAccountBloc>(
        () => _i61.DeleteAccountBloc(gh<_i12.DeleteAccountUseCase>()));
    gh.factory<_i62.DeleteGroceryListUseCase>(() =>
        _i62.DeleteGroceryListUseCase(gh<_i18.GroceryListDetailsRepository>()));
    gh.factory<_i63.DeleteRecipeUseCase>(
        () => _i63.DeleteRecipeUseCase(gh<_i31.RecipeDetailsRepository>()));
    gh.factory<_i64.FetchGroceryListDetailsUseCase>(() =>
        _i64.FetchGroceryListDetailsUseCase(
            gh<_i18.GroceryListDetailsRepository>()));
    gh.factory<_i65.FetchMyTasksUseCase>(
        () => _i65.FetchMyTasksUseCase(gh<_i27.MyTasksRepository>()));
    gh.factory<_i66.FetchRecipeDetailsUseCase>(() =>
        _i66.FetchRecipeDetailsUseCase(gh<_i31.RecipeDetailsRepository>()));
    gh.factory<_i67.ForgotPasswordBloc>(() =>
        _i67.ForgotPasswordBloc(gh<_i46.SendPasswordResetEmailUseCase>()));
    gh.factory<_i68.GroceryListDetailsBloc>(() => _i68.GroceryListDetailsBloc(
          addItemToListUseCase: gh<_i54.AddItemToListUseCase>(),
          removeItemFromListUseCase: gh<_i42.RemoveItemFromListUseCase>(),
          fetchGroceryListDetailsUseCase:
              gh<_i64.FetchGroceryListDetailsUseCase>(),
          clearGroceryListItemsUseCase: gh<_i58.ClearGroceryListItemsUseCase>(),
        ));
    gh.factory<_i69.GroceryListsBloc>(
        () => _i69.GroceryListsBloc(gh<_i23.GroceryListsUseCase>()));
    gh.factory<_i70.LoginBloc>(
        () => _i70.LoginBloc(gh<_i24.LoginWithEmailAndPasswordUseCase>()));
    gh.factory<_i71.LogoutBloc>(
        () => _i71.LogoutBloc(gh<_i25.LogoutUseCase>()));
    gh.factory<_i72.MyTasksBloc>(
        () => _i72.MyTasksBloc(gh<_i65.FetchMyTasksUseCase>()));
    gh.factory<_i73.RecipeDetailsBloc>(() => _i73.RecipeDetailsBloc(
          deleteRecipeUseCase: gh<_i63.DeleteRecipeUseCase>(),
          fetchRecipeDetailsUseCase: gh<_i66.FetchRecipeDetailsUseCase>(),
        ));
    gh.factory<_i74.RecipesBloc>(
        () => _i74.RecipesBloc(gh<_i36.RecipesUseCase>()));
    gh.factory<_i75.RegisterBloc>(() =>
        _i75.RegisterBloc(gh<_i37.RegisterWithEmailAndPasswordUseCase>()));
    gh.factory<_i76.RemoteConfigBloc>(
        () => _i76.RemoteConfigBloc(gh<_i41.RemoteConfigUseCase>()));
    gh.factory<_i77.UpdateDisplayNameBloc>(
        () => _i77.UpdateDisplayNameBloc(gh<_i48.UpdateDisplayNameUseCase>()));
    gh.factory<_i78.UpdateEmailBloc>(
        () => _i78.UpdateEmailBloc(gh<_i49.UpdateEmailUseCase>()));
    gh.factory<_i79.VerifyUserBloc>(
        () => _i79.VerifyUserBloc(gh<_i53.VerifyUserUseCase>()));
    gh.factory<_i80.CreateListBloc>(
        () => _i80.CreateListBloc(gh<_i59.CreateListUseCase>()));
    gh.factory<_i81.CreateRecipeBloc>(
        () => _i81.CreateRecipeBloc(gh<_i60.CreateRecipeUseCase>()));
    return this;
  }
}
