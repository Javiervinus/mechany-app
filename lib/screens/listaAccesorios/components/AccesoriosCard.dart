import 'package:AppInicialFlutter/Constants.dart';
import 'package:AppInicialFlutter/sizeConfig.dart';
import 'package:flutter/material.dart';

class AccesorioCard extends StatelessWidget {
  const AccesorioCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(getProportionateScreenHeight(5)),
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryLightColor,
          boxShadow: [
            BoxShadow(color:Colors.black.withOpacity(0.2),offset: Offset(1,3))
          ],
          borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical:getProportionateScreenHeight(20)),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: getProportionateScreenHeight(20)),
                child: CircleAvatar(
                  radius: getProportionateScreenHeight(30),
                  backgroundColor: kPrimaryColor,
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left:getProportionateScreenWidth(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Bujias",style: TextStyle(color: Colors.black,decoration: TextDecoration.none,fontSize: getProportionateScreenHeight(20)),),
                    Text("9 de Octubre",style: TextStyle(color: Colors.black,decoration: TextDecoration.none,fontSize: getProportionateScreenHeight(15)))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}