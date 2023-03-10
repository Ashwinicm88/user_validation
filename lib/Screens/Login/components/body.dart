import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:user_validation/Screens/Login/components/background.dart';
import 'package:user_validation/components/already_have_an_account_acheck.dart';
import 'package:user_validation/components/rounded_button.dart';
import 'package:user_validation/components/rounded_input_field.dart';
import 'package:user_validation/components/rounded_password_field.dart';
import 'package:user_validation/components/text_field_container.dart';
import 'package:user_validation/constraints.dart';

class Body extends StatelessWidget{
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Background(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold ),
          ),
          SizedBox(
            height: size.height*0.03,
          ),
          SvgPicture.asset("assets/icon/login.svg",
            height: size.height*0.35,
          ),
          RoundedInputField(
            hintText:"Your Email",
            onChanged: (value){},
          ),
          RoundedPasswordField(
            onChanged: (value){},
          ),
          RoundedButton(
            text:"LOGIN",
            press:(){},

          ),
          SizedBox(height: size.height*0.03,),
          AlreadyHaveAnAccountCheck(
            press: (){},
          ),
        ],
      ) ,
    );
  }
}



