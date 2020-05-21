import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:storytech/helpers/card.dart';
import 'package:storytech/helpers/company.dart';
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
       children:[

         SafeArea(
           child: Container(
             margin: EdgeInsets.only(top:10,left: 5),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
               Container(
                 width: MediaQuery.of(context).size.width -80,
                padding: EdgeInsets.only(left:15),
                 margin:EdgeInsets.all(2),
                 height: 60,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius:BorderRadius.all(Radius.circular(50)),
                   boxShadow: [
                     BoxShadow(
                       color:Colors.grey[300],
                       spreadRadius:5,
                       blurRadius: 10
                     )
                   ]
                 ),
                 child: 
                 Center(
                   child: TextField(
                    decoration:InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search Job",
                      hintStyle: TextStyle(fontSize:20,color: Colors.grey),
                      suffixIcon:Icon(Icons.search,color: Colors.grey[400]),
                    
                    )
                   ),
                 ),
               
               ),
               Stack(
                 children:[
                   Align(
                     child:  Container(
                     height: 10,
                     width: 10,
                     decoration: BoxDecoration(
                        color:Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(25))
                     ),
                   ),
                   alignment: Alignment.topRight,
                   ),
                   IconButton(icon: Icon(MdiIcons.filterOutline),onPressed: null,)
                 ]
               )
             ],),
           )),

        Padding(
          padding: const EdgeInsets.only(top:20,left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Featured Jobs",style: TextStyle(fontSize:30),),
              FlatButton(onPressed: null, child: Text("SEE ALL",style: TextStyle(color: Colors.blue,fontWeight:FontWeight.bold),))
            ],
          ),
        ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:Row(children: <Widget>[
            card("ROYAL CYBER","Mobile Application Designer","Remote"," Full Time","46k yr"," +2.8k"),
            card("WEEBLY CREATIONS","Direction And Production","London","Part Time","50k yr","+25k")
          ],)
        ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Divider(height: 1,indent: 0.5,),
       ),


       Padding(
          padding: const EdgeInsets.only(top:20,left: 15,bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Top Companies",style: TextStyle(fontSize:30),),
              FlatButton(onPressed: null, child: Text("SEE ALL",style: TextStyle(color: Colors.blue,fontWeight:FontWeight.bold),))
            ],
          ),
        ),
        Center(
          child: Wrap(
            spacing:30,
            runSpacing: 30,
            children:[
              company("lib/images/1.png","HashIt","Remote"),
              company("lib/images/2.png","Waterdrop","Londan"),
              company("lib/images/3.png","Kking","Dubai"),
              company("lib/images/4.png","Mountine","USA"),
              company("lib/images/5.png","Callbell","Remote"),
              company("lib/images/6.png","Thedots","Italy"),
              company("lib/images/7.png","Flyit","Remote"),
              company("lib/images/8.png","Glow","spain"),
              company("lib/images/9.png","Circle","India"),
              company("lib/images/10.png","Ylink","Remote"),
              company("lib/images/11.png","Mona","UAE"),
              company("lib/images/12.png","lovly","Remote"),


              

            ]
          ),
        )
       ]
       )
    );
  }
}