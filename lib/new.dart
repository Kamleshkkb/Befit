import 'dart:convert';

import 'package:flutter/material.dart';

class NewApp extends StatefulWidget {
  const NewApp({Key? key}) : super(key: key);

  @override
  State<NewApp> createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString("asset/gym.json"),
        builder: (context,snapshot){
          var mydata=json.decode(snapshot.data.toString());
          if(mydata==null){
            return CircularProgressIndicator();
          }else{
           return Center(
              child: Text(mydata[0]["name"]),
            );
          }
        }
      ),
    );
  }
}