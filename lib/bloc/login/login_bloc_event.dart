import 'package:equatable/equatable.dart';

abstract class LoginBlocEvent extends Equatable{}

class LoginButtonPressed extends LoginBlocEvent{
  final String userName;
  final String password;
  final String token;

  LoginButtonPressed(
    this.userName,
    this.password,
    this.token
  );

  @override
  // TODO: implement props
  List<Object?> get props => [];
}