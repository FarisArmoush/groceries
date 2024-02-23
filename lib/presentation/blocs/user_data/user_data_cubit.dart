import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/fetch_user_data_use_case.dart';
import 'package:injectable/injectable.dart';

part 'user_data_cubit.freezed.dart';
part 'user_data_state.dart';

@lazySingleton
class UserDataCubit extends Cubit<UserDataState> {
  UserDataCubit(this.fetchUserDataUseCase)
      : super(
          UserDataState(
            displayName: fetchUserDataUseCase.displayName,
            email: fetchUserDataUseCase.email,
            emailVerified: fetchUserDataUseCase.emailVerified,
            creationDate: fetchUserDataUseCase.creationDate,
          ),
        );
  final FetchUserDataUseCase fetchUserDataUseCase;
  Future<void> loadUser() async {
    emit(
      state.copyWith(
        displayName: fetchUserDataUseCase.displayName,
        email: fetchUserDataUseCase.email,
        emailVerified: fetchUserDataUseCase.emailVerified,
        creationDate: fetchUserDataUseCase.creationDate,
      ),
    );
  }
}
