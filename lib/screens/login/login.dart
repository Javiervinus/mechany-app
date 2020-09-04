import 'package:AppInicialFlutter/sizeConfig.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
       child: Scaffold(
         body: Center(child: Text("Esctura inicial de app por David Mendoza")),
       ),
    );
  }
}