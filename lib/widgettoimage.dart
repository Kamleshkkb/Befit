import 'dart:typed_data';

import 'package:befit/utils.dart';
import 'package:flutter/material.dart';

class widgettoimage extends StatefulWidget {
  final Function(GlobalKey key) builder;
  const widgettoimage({Key? key, required this.builder}) : super(key: key);

  @override
  State<widgettoimage> createState() => _widgettoimageState();
}

class _widgettoimageState extends State<widgettoimage> {
  final globalKey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      key: globalKey,
      child:widget.builder(globalKey)
    );
  }
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late GlobalKey key1;
  late Uint8List bytes1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50,),
        
        
        widgettoimage(
          builder: (key) {
            this.key1=key;
            return Text("hello");
          },
          
        ),

        FlatButton(onPressed: ()async{
         final bytes=await Utils.capture(key1);
         setState(() {
           this.bytes1=bytes;
         });
        }, child: Text("convert")),
        buildimage(bytes1),
      ],
    );
  }
  
  Widget buildimage(Uint8List bytes1) =>bytes1!=null?Image.memory(bytes1):Container();
}