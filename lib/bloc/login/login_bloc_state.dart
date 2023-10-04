import 'package:equatable/equatable.dart';
import 'package:study/model/study/user_model.dart';

abstract class LoginBlocState extends Equatable{

}

class LoginInitState extends LoginBlocState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoginLoadingState extends LoginBlocState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoginSuccessState extends LoginBlocState{

  final UserModel userModel;
  LoginSuccessState(this.userModel);

  @override
  // TODO: implement props
  List<Object?> get props => [userModel];
}

class LoginFailState extends LoginBlocState{

  final String? message;
  LoginFailState(this.message);

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}