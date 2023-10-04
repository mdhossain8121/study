import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/bloc/login/login_bloc.dart';
import 'package:study/bloc/login/login_bloc_event.dart';
import 'package:study/bloc/login/login_bloc_state.dart';
import 'package:study/ui/study/components/custom_password_field.dart';
import 'package:study/ui/study/components/custom_text_field.dart';
import 'package:study/ui/study/components/rounded_button.dart';
import 'package:study/ui/study/screens/home/home_ui.dart';
import 'package:study/ui/study/screens/registration/signup_ui.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:study/firebase_options.dart';

import '../../components/already_have_an_account_check.dart';
import '../../components/social_icons.dart';

class LoginUI extends StatefulWidget{
  const LoginUI({super.key});

  @override
  State createState() => LoginUiState();
}

class LoginUiState extends State<LoginUI>{

  String? fcmToken = "";
  String userName = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    FirebaseMessaging.instance.getToken().then((value) {
      fcmToken = value;
    });
    return BlocListener<LoginBloc,LoginBlocState>(
      listener: (context,state){
        if(state is LoginFailState){
          ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                    content: Text(state.message??"Something went wrong")
                )
              );
        }

        if(state is LoginSuccessState){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) {
                    return HomeUI();
                  })
          );
        }
      },
      child: SafeArea(
        child: Scaffold(
          body: SizedBox(
            width: double.infinity,
            height: size.height,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: size.height*.01),

                  SvgPicture.asset(
                    'assets/images/login.svg',
                    alignment: Alignment.topCenter,
                    height: size.height*.35,
                  ),

                  SizedBox(height: size.height*.03),

                  CustomTextField(
                    hintText: "Enter email",
                    icon: Icons.email,
                    onChanged: (value){
                      userName = value;
                    },
                  ),

                  CustomPasswordField(
                      hintText: "Password",
                      onChanged: (value){
                        password = value;
                      }
                  ),

                  BlocBuilder<LoginBloc,LoginBlocState>(builder: (context,state){
                    if(state is LoginLoadingState) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: CircularProgressIndicator(),
                      );
                    }
                    else{
                      return RoundedButton(
                          text: "Login",
                          onPress:() {
                            context.read<LoginBloc>().add(LoginButtonPressed(userName, password, fcmToken??""));
                          }
                      );
                    }
                  }),


                  SizedBox(height: size.height*.02),

                  AlreadyHaveAnAccountCheck(
                    login: true,
                    onPress: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context){
                                return SignupUi();
                              }
                          )
                      );
                    },
                  ),

                  SocialIcons()

                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}