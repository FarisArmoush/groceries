part of '../../use_cases.dart';

class UpdateEmailUseCase extends FutureUseCase<String, void> {
  UpdateEmailUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  @override
  Future<void> call(String input) async {
    return _authenticationRepository.updateEmail(input);
  }
}