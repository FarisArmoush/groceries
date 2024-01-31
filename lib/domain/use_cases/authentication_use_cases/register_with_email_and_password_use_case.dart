import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:groceries/domain/use_cases/app_use_cases.dart';
import 'package:groceries/utils/params/register_param/register_param.dart';

class RegisterWithEmailAndPasswordUseCase
    extends FutureInputUseCase<RegisterParam> {
  RegisterWithEmailAndPasswordUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  @override
  Future<void> call(RegisterParam input) async {
    return _authenticationRepository.signUpWithEmailAndPassword(input);
  }
}