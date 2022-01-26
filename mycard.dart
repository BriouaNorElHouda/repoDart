import'package:flutter/material.dart';
void main(){
  runApp(MyCard());
}
class MyCard extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
    home:Scaffold(
    backgroundColor:Colors.black,
        body:SafeArea(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
    children:[
      CircleAvatar(
    radius:75.0,
        backgroundImage:AssetImage('images/frst.jpeg'),
    ),
    Text(
    'Nor El Houda Brioua',
    style :TextStyle(
    fontSize:40.0,color:Colors.teal[900],fontFamily:'Lobster'),
    ),
    Text(
    'Student',
    style :TextStyle(
    fontSize:25.0,color:Colors.white,fontFamily:'Merienda'),
    ),
    SizedBox(
      width: 150.0,
      child:Divider(
        color:Colors.white,
    )
    ),
      Container(
          margin:EdgeInsets.symmetric(horizontal: 25,vertical: 20),
          padding:EdgeInsets.symmetric(horizontal: 25,vertical: 17),
          color:Colors.teal[900],
          child:Row(
              children:[
                Icon(
                  Icons.phone,
                  color:Colors.white,
                ),
                SizedBox(
                  width: 35.0,

                ),
                Text('0123456789',
                    style :TextStyle(
                      fontSize:25.0,
                      )
                )]

          )
      ),
      Container(
        margin:EdgeInsets.symmetric(horizontal: 25,vertical: 20),
        padding:EdgeInsets.symmetric(horizontal: 25,vertical: 17),
        color:Colors.teal[900],
        child:Row(
          children:[
            Icon(
              Icons.mail,
              color:Colors.white,
        ),
            SizedBox(
              width: 35.0,

            ),
            Text('n.b@gmail.com',
                style :TextStyle(
                  fontSize:25.0,)
            )]

        )
      )
        ]
    )
    )
    )
    );
  }
}
