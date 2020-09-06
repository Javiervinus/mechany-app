import 'package:AppInicialFlutter/components/forminput.dart';
import 'package:AppInicialFlutter/components/logo.dart';
import 'package:AppInicialFlutter/screens/listaMecanicos/components/MecanicoCard.dart';
import 'package:flutter/material.dart';

import '../../Constants.dart';
import '../../sizeConfig.dart';

class ListaMecanicos extends StatefulWidget {
  TextEditingController filtroController= TextEditingController(text: "");
  ListaMecanicos({Key key}) : super(key: key);

  @override
  _ListaMecanicosState createState() => _ListaMecanicosState();
}

class _ListaMecanicosState extends State<ListaMecanicos> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Column(children: [
            Flexible(
                flex:1,
                fit: FlexFit.loose,
                  child: Container(
                  width: SizeConfig.screenWidth,  
                  decoration: BoxDecoration(gradient: kPrimaryGradientColor),
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical:getProportionateScreenHeight(30)),
                      child: CircleAvatar(
                        backgroundColor: kPrimaryLightColor,
                        radius: getProportionateScreenHeight(75),
                        child: Icon(Icons.person,color: kPrimaryColor,size: getProportionateScreenHeight(100),),
                      ),
                    ),
                    Text("Personal Mecanico",style: TextStyle(fontSize: 30,color: kPrimaryLightColor,decoration: TextDecoration.none,fontWeight: FontWeight.bold),)
                  ],
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(width: SizeConfig.screenWidth,
                decoration: BoxDecoration(color: kPrimaryLightColor),
                child: Padding(
                  padding: EdgeInsets.all( getProportionateScreenHeight(5)),
                  child: ListView(
                    children: [
                      MecanicoCard(),
                      MecanicoCard(),
                      MecanicoCard(),
                      MecanicoCard(),
                      MecanicoCard()
                    ],
                  ),),
                ))
          ],),
        ),
       Positioned(
         left: SizeConfig.screenWidth*0.2,
         top: SizeConfig.screenHeight*0.31,
         child: Material(
           color: Colors.orange.withOpacity(0),
           child: FormInput(controller:widget.filtroController,hintText: "Buscar por Ciudades o Sector",isContrasena: false,
           sombras: [BoxShadow(color:Colors.black.withOpacity(0.3),offset: Offset(1,10))],)))  
      ],
    );
  }
}