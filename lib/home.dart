import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:storytech/homepage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentindex=0;
  final List<Widget> _children=[
    Homepage(),
    Center(child: Text("StoryTech",style: TextStyle(color:Colors.red,fontSize: 30,fontWeight: FontWeight.bold,),)),
    Center(child: Text("StoryTech",style: TextStyle(color:Colors.red,fontSize: 30,fontWeight: FontWeight.bold,),),),
    Center(child: Text("StoryTech",style: TextStyle(color:Colors.red,fontSize: 30,fontWeight: FontWeight.bold,),),),
    Center(child: Text("StoryTech",style: TextStyle(color:Colors.red,fontSize: 30,fontWeight: FontWeight.bold,),),)

    

  ];
  void ontapp(int index){
    setState(() {
      _currentindex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontapp,
        currentIndex: _currentindex,
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black),title: Text("Home"),activeIcon:Icon(Icons.home,color:Colors.blue)),
          BottomNavigationBarItem(icon: Icon(Icons.business_center,color: Colors.black),title: Text("Work"),activeIcon:Icon(Icons.business_center,color:Colors.blue)),
          BottomNavigationBarItem(icon: Icon(Icons.add,color: Colors.black),title: Text("Add"),activeIcon:Icon(Icons.add,color:Colors.blue)),
          BottomNavigationBarItem(icon: Icon(Icons.textsms,color: Colors.black),title: Text("Chat"),activeIcon:Icon(Icons.textsms,color:Colors.blue)),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black),title: Text("Profile"),activeIcon:Icon(Icons.person,color:Colors.blue))
        ]
        ),
     body: _children[_currentindex],
    );
  }
}