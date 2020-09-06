import 'package:AppInicialFlutter/components/formbutton.dart';
import 'package:AppInicialFlutter/components/forminput.dart';
import 'package:AppInicialFlutter/screens/home/home.dart';
import 'package:flutter/material.dart';

import '../../../sizeConfig.dart';

class LoginForm extends StatelessWidget {
  TextEditingController contrasenaController=TextEditingController(text: "admin");
  TextEditingController usuarioController=TextEditingController(text: "javier");
  LoginForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Center(
        child: Form(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            buildLabel("Usuario:"),
            Padding(
              padding: EdgeInsets.only(bottom: getProportionateScreenHeight(20)),
              child: FormInput(controller: usuarioController,hintText: "Ingrese Usuario",isContrasena: false),
            ),
            buildLabel("Contraseña:"),
            FormInput(controller: contrasenaController,hintText: "Ingrese contrasena" ,isContrasena: true),
            SizedBox(height: getProportionateScreenHeight(40),),
            Padding(
              padding: EdgeInsets.only(bottom: getProportionateScreenHeight(20)),
              child: DefaultButton(text: "Iniciar Sesion",press: (){
                
                MaterialPageRoute route= MaterialPageRoute(builder: (context)=>Home());
                Navigator.push(context, route);
                }),
            ),
            DefaultButton(text: "Registrarme",press: (){},)
          ],) ),
      
    );
  }

  Padding buildLabel(String texto) {
    return Padding(
          padding: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(7),horizontal: getProportionateScreenWidth(20)),
          child: Text(texto,style: TextStyle(fontSize: getProportionateScreenHeight(25)),),
        );
  }
}