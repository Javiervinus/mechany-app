import 'package:AppInicialFlutter/Constants.dart';
import 'package:AppInicialFlutter/components/forminput.dart';
import 'package:AppInicialFlutter/screens/listaAccesorios/components/AccesoriosCard.dart';
import 'package:AppInicialFlutter/screens/listaMecanicos/components/MecanicoCard.dart';
import 'package:AppInicialFlutter/sizeConfig.dart';
import 'package:flutter/material.dart';

class ListaAccesorios extends StatelessWidget {
  TextEditingController filtroController= TextEditingController(text: "");
   ListaAccesorios({Key key}) : super(key: key);

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
                    Text("Accesorios y Repuestos",style: TextStyle(fontSize: 30,color: kPrimaryLightColor,decoration: TextDecoration.none,fontWeight: FontWeight.bold),)
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
                      AccesorioCard()
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
           child: FormInput(controller:filtroController,hintText: "Buscar por Ciudades o Sector",isContrasena: false,
           sombras: [BoxShadow(color:Colors.black.withOpacity(0.3),offset: Offset(1,10))],)))  
      ],
    );
  }
}