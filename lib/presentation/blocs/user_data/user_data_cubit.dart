import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/user_model/user_model.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/fetch_user_use_case.dart';
import 'package:injectable/injectable.dart';

part 'user_data_cubit.freezed.dart';
part 'user_data_state.dart';

@lazySingleton
class UserDataCubit extends Cubit<UserDataState> {
  UserDataCubit(this.fetchUserDataUseCase)
      : super(
          UserDataState(
            user: fetchUserDataUseCase(),
          ),
        );
  final FetchUserUseCase fetchUserDataUseCase;
  void loadUser() => emit(
        state.copyWith(
          user: fetchUserDataUseCase(),
        ),
      );
}
