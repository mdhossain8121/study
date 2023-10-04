import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study/ui/study/screens/login/login_ui.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/already_have_an_account_check.dart';
import '../../components/custom_password_field.dart';
import '../../components/custom_text_field.dart';
import '../../components/rounded_button.dart';
import '../../components/social_icons.dart';

class SignupUi extends StatefulWidget{

  const SignupUi({super.key});

  @override
  State createState() {
    return SignupState();
  }
}

class SignupState extends State<SignupUi>{

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
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

                SizedBox(height: size.height*.01),

                CustomTextField(
                  hintText: "Enter email",
                  icon: Icons.email,
                  onChanged: (value){

                  },
                ),

                CustomPasswordField(
                    hintText: "Password",
                    onChanged: (value){}
                ),

                CustomPasswordField(
                    hintText: "Confirm Password",
                    onChanged: (value){}
                ),

                RoundedButton(
                    text: "Signup",
                    onPress:() {

                    }
                ),

                SizedBox(height: size.height*.01),

                AlreadyHaveAnAccountCheck(
                  login: false,
                  onPress: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context){
                              return LoginUI();
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
    );
  }
}