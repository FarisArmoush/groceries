import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/domain/entities/user/user_entity.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/fetch_user_use_case.dart';
import 'package:injectable/injectable.dart';

part 'user_data_cubit.freezed.dart';
part 'user_data_state.dart';

@lazySingleton
class UserDataCubit extends Cubit<UserDataState> {
  UserDataCubit(this._fetchUserDataUseCase)
      : super(
          UserDataState(
            user: _fetchUserDataUseCase(),
          ),
        );
  final FetchUserUseCase _fetchUserDataUseCase;
  void loadUser() => emit(
        state.copyWith(
          user: _fetchUserDataUseCase(),
        ),
      );
}
