import 'package:flutter/material.dart';

Widget company(String cmpimage,String cmpname,String cmplocation){
  return Column(
    children: <Widget>[
      Container(
        height:85,
        width:85,
        decoration:BoxDecoration(
          image: DecorationImage(image: AssetImage(cmpimage),fit: BoxFit.cover),
          borderRadius:BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color:Colors.grey[300],
              spreadRadius: 5,
              blurRadius: 10

            )
          ]
        )
      ),
      Padding(
        padding: const EdgeInsets.only(top:5),
        child: Text(cmpname,style: TextStyle(fontWeight:FontWeight.w600,fontSize:20),),
      ),
      Text(cmplocation,style: TextStyle(fontWeight:FontWeight.w600,fontSize:15,color: Colors.grey),)
    ],
  );
}