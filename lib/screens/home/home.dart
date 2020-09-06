
import 'package:AppInicialFlutter/components/logo.dart';
import 'package:AppInicialFlutter/screens/listaAccesorios/listaAccesorios.dart';
import 'package:AppInicialFlutter/screens/listaMecanicos/listItems.dart';
import 'package:flutter/material.dart';

import '../../Constants.dart';
import '../../sizeConfig.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex:1,
          fit: FlexFit.loose,
            child: Container(
            width: SizeConfig.screenWidth,  
            decoration: BoxDecoration(gradient: kPrimaryGradientColor),
            child: Column(children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical:getProportionateScreenHeight(30)),
                child: Logo(),
              ),
              Text("Mechany",style: TextStyle(fontSize: 40,color: kPrimaryLightColor,decoration: TextDecoration.none,fontWeight: FontWeight.bold),)
            ],
            ),
          ),
        ),
        Flexible(
          flex: 2,
            child: Container(
              width: SizeConfig.screenWidth,
            decoration: BoxDecoration(color: kPrimaryLightColor),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                botonInicio(Icons.person,"Personal Mecanico",(){
                  MaterialPageRoute route= MaterialPageRoute(builder: (context)=>ListaMecanicos());
                  Navigator.push(context, route);
                }),
                botonInicio(Icons.settings_applications_rounded, "Repuestos y Accesorios",(){
                  MaterialPageRoute route= MaterialPageRoute(builder: (context)=>ListaAccesorios());
                  Navigator.push(context, route);
                })
              ],
            ),
          ),
        ) 
      ],
    );
  }
   

  Widget botonInicio(IconData icono,String texto,Function press){
    return GestureDetector(
      onTap: press,
          child: Container(
        width: getProportionateScreenWidth(300),
        height: getProportionateScreenHeight(150),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color:kOtherColor,width: 5)),
        child: Center(
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: getProportionateScreenHeight(15)),
            child: Column(
              children: [
                Icon(icono,size: getProportionateScreenHeight(80),),
                Text(texto,style: TextStyle(fontSize: getProportionateScreenHeight(20),decoration: TextDecoration.none,color: Colors.black))
              ],
            ),
          ),
        ),
        
        ),
    );
  }

}