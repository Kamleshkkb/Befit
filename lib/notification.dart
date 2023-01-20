import 'package:flutter/material.dart';


class Notification1 extends StatefulWidget {
  const Notification1({Key? key}) : super(key: key);

  @override
  State<Notification1> createState() => _Notification1State();
}

class _Notification1State extends State<Notification1> {

  fun(){
    return  Card(
            child: ListTile(
              leading:CircleAvatar(),
              title: Text("Notification  title"),
              subtitle: Text("Time of recieved notification"),
              trailing:IconButton(onPressed: (){}
              
              
              , icon:Icon(Icons.menu),)
              
               
            ),
          );
  }
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(title: Text("Notification")),
      body: SingleChildScrollView(
      child: Column(
        children: [
         fun(),
         fun(),
         fun(),
         fun(),
         fun(),
         fun(),
        ],
      ),
    ),
    );
    
   
  }
}