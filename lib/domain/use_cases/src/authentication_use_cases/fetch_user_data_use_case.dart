part of '../../use_cases.dart';

class FetchUserDataUseCase {
  const FetchUserDataUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  String? get email => _authenticationRepository.email;
  bool? get emailVerified => _authenticationRepository.emailVerified;
  String? get displayName => _authenticationRepository.displayName;
  String? get creationDate =>
      _authenticationRepository.creationDate?.toDDofMMYYYY();
  String? get image => _authenticationRepository.image;
}
