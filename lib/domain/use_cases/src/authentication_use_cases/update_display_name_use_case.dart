part of '../../use_cases.dart';

class UpdateDisplayNameUseCase extends FutureInputUseCase<String> {
  UpdateDisplayNameUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  @override
  Future<void> call(String input) async {
    return _authenticationRepository.updateDisplayName(input);
  }
}
