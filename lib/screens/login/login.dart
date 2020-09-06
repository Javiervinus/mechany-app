import 'package:AppInicialFlutter/components/logo.dart';
import 'package:AppInicialFlutter/components/rueditas.dart';
import 'package:AppInicialFlutter/screens/login/components/logInForm.dart';
import 'package:AppInicialFlutter/sizeConfig.dart';
import 'package:flutter/material.dart';

import '../../Constants.dart';
import '../../sizeConfig.dart';
import '../../sizeConfig.dart';
import '../../sizeConfig.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
     return Stack(
       children: [
         Scaffold(
            resizeToAvoidBottomPadding: true,
            resizeToAvoidBottomInset: true,
            body: 
                Container(
                decoration: BoxDecoration(gradient: kPrimaryGradientColor),
                child: ListView(
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical: getProportionateScreenHeight(40) ),
                      child: Logo(),
                    ),

                    LoginForm()
                  ],
                 ),
    ),
         ),
       ],
     );
  }
}

