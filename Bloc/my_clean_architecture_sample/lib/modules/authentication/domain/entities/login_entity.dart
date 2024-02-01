import 'package:equatable/equatable.dart';

class LoginEntity extends Equatable {
  final String email;
  final String password;

  const LoginEntity({
    required this.email,
    required this.password,
  });

  const LoginEntity.empty({
    this.email = "",
    this.password = "",
  });

  @override
  List<Object?> get props => [
        email,
        password,
      ];
}
