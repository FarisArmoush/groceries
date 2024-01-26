import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';
import 'package:image_picker/image_picker.dart';

part 'update_user_image_bloc.freezed.dart';
part 'update_user_image_event.dart';
part 'update_user_image_state.dart';

class UpdateUserImageBloc
    extends Bloc<UpdateUserImageEvent, UpdateUserImageState> {
  UpdateUserImageBloc(this._updateUserImageUseCase)
      : super(const UpdateUserImageState()) {
    on<UpdateUserImageEvent>(
      (event, emit) => event.map(
        pickImage: (event) => _onPickImage(event, emit),
      ),
    );
  }

  final UpdateUserImageUseCase _updateUserImageUseCase;
  Future<void> _onPickImage(
    _PickImage event,
    Emitter<UpdateUserImageState> emit,
  ) async {
    final picker = ImagePicker();
    final imageFile = await picker.pickImage(source: event.source);
    await _updateUserImageUseCase.call(File(imageFile?.path ?? ''));
    emit(state.copyWith(imageFile: File(imageFile?.path ?? '')));
  }
}
