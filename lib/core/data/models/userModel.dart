import 'package:banking/core/domain/entities/user.dart';

class UserModel {
  final String name;
  final String telephone;
  final String email;
  final String password;

  UserModel(
      {required this.name,
      required this.telephone,
      required this.email,
      required this.password});
  factory UserModel.fromEntity(User user) {
    return UserModel(
        name: user.name,
        telephone: user.telephone,
        email: user.email,
        password: user.password);
  }
}
