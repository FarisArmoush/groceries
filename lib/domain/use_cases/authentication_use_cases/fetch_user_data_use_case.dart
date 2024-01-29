import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:groceries/utils/extenstions/date_time_parser_extension.dart';

class FetchUserDataUseCase {
  const FetchUserDataUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  String? get email => _authenticationRepository.email;
  bool? get emailVerified => _authenticationRepository.emailVerified;
  String? get displayName => _authenticationRepository.displayName;
  String? get creationDate =>
      _authenticationRepository.creationDate?.toDDofMMYYYY();
}
