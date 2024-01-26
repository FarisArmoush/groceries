part of '../../use_cases.dart';

class UpdateUserImageUseCase extends FutureInputUseCase<File> {
  UpdateUserImageUseCase(this.authenticationRepository);

  final AuthenticationRepository authenticationRepository;
  @override
  Future<void> call(File input) =>
      authenticationRepository.updateUserImage(input);
}
