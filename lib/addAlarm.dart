import 'package:flutter/material.dart';



class AddAlarm extends StatefulWidget {
  const AddAlarm({Key? key}) : super(key: key);

  @override
  State<AddAlarm> createState() => _AddAlarmState();
}

class _AddAlarmState extends State<AddAlarm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Alarm"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
      SizedBox(
        height: 500,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
              ListTile(
                leading: Icon(Icons.bed),
                title:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text("Bed Time"),
                    Text("data")
                  ],
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              )
          ],
        ),
      )
            
          ],
        ),
      ),
    );
  }
}