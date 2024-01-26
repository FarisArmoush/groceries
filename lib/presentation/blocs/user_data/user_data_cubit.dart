import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';

part 'user_data_cubit.freezed.dart';
part 'user_data_state.dart';

class UserDataCubit extends Cubit<UserDataState> {
  UserDataCubit(FetchUserDataUseCase fetchUserDataUseCase)
      : super(
          UserDataState(
            displayName: fetchUserDataUseCase.displayName,
            email: fetchUserDataUseCase.email,
            emailVerified: fetchUserDataUseCase.emailVerified,
            creationDate: fetchUserDataUseCase.creationDate,
            image: fetchUserDataUseCase.image,
          ),
        );
}
