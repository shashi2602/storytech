import 'package:flutter/material.dart';

Widget card(String cmpname,String role,String location,String time,String salary,String nousers){
  return Container(
   
    width: 320,
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius:BorderRadius.circular(25),
      boxShadow: [
                     BoxShadow(
                       color:Colors.grey[400],
                       spreadRadius:5,
                       blurRadius: 8
                     )
                   ],
      gradient: LinearGradient(colors: [
        Colors.purple[700],
        Colors.purple
      ])
    ),
    child: Container(
      margin: EdgeInsets.all(15),
      child: Column(
        children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Text(cmpname,style: TextStyle(color:Colors.grey[400],fontWeight:FontWeight.bold),),
              IconButton(icon: Icon(Icons.favorite_border,color:Colors.grey[400]),onPressed:null)
            ]
          ),
          Text(role,style: TextStyle(fontSize:30,color: Colors.white,fontWeight: FontWeight.w500),),
          Padding(
            padding: const EdgeInsets.only(top:10,bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
              Text(location,style: TextStyle(fontWeight:FontWeight.w600,color: Colors.grey[400]),),
              Text(" |",style: TextStyle(fontWeight:FontWeight.w600,color: Colors.grey[400]),),
              Text(time,style: TextStyle(fontWeight:FontWeight.w600,color: Colors.grey[400]),),
              Text("  |",style: TextStyle(fontWeight:FontWeight.w600,color: Colors.grey[400]),),
              Text(salary,style: TextStyle(fontWeight:FontWeight.w600,color: Colors.grey[400]),)
            ],),

          ),
          
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             Row(
               children: <Widget>[
                 Stack(
                   children:[
                      persons("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg",0),
                      persons("https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg",25),
                      persons("https://images.pexels.com/photos/736716/pexels-photo-736716.jpeg",55),
                      
                   ]
                 ),
                 Text(nousers,style: TextStyle(fontSize: 15,color: Colors.grey[400]),),
                
               ],
             ),
              Container(
                //height:20,
                width:80,
                padding: EdgeInsets.all(5),
                child:Center(child: Text("APPLY",style: TextStyle(fontWeight:FontWeight.w500),)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25)
                ),
              )
           ],
         )
        ]
      ),
    ),
  );
}


Widget persons(String image,double size){
  return Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.only(left:size),
                    decoration:BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(image: NetworkImage(image),fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(50),
                      border:Border.all(width: 5,color: Colors.purple)
                    )
                  );
}