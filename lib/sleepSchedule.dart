import 'package:flutter/material.dart';

class SleepSchedule extends StatefulWidget {
  const SleepSchedule({Key? key}) : super(key: key);

  @override
  State<SleepSchedule> createState() => _SleepScheduleState();
}

class _SleepScheduleState extends State<SleepSchedule> {

  fun(String s,String s2){
    return  Container(
       height: 50,
                    width: 80,
      child: Column(
                    children: [
                      
                      Text(s),
                      SizedBox(height: 10,),
                      Text(s2),
                     
                    ],
                  ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sleep Schedule")),
      body: Padding(
        
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 150,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Ideal Hours for Sleep"),
                        Text("8hours 30minutes"),
                        FlatButton(onPressed: (){},
                        color: Colors.blueGrey,
                         child: Text("learn more"))
                      ],
                    ),
                    CircleAvatar()
                  ],
                ),
              ),
            ),

            Text("Your Schedule"),
            SizedBox(height: 10,),
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  fun("Mon", "1"),
                 
                  fun("Tue", "2"),
                  fun("Wed", "3"),
                  fun("Thur", "4"),
                  fun("Fri", "5")

                ],
              ),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.bed),
              title: Text("Bedtime, 9:00am"),
              subtitle: Text("In 8hours 22minutes"),
              trailing: Switch(value: true, onChanged: (value){}),
            ),
            ListTile(
              leading: Icon(Icons.punch_clock),
              title: Text("Clock, 9:00am"),
              subtitle: Text("In 8hours 22minutes"),
              trailing: Switch(value: true, onChanged: (value){}),
            )
          ],
        ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          
        },
        child: Icon(Icons.add),
        ),
    );
  }
}