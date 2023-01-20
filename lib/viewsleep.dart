import 'package:befit/Showgraph.dart';
import 'package:flutter/material.dart';

class ViewSleep extends StatefulWidget {
  const ViewSleep({Key? key}) : super(key: key);

  @override
  State<ViewSleep> createState() => _ViewSleepState();
}

class _ViewSleepState extends State<ViewSleep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sleep Track")),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Container(
              height: 200,
              width: 500,
              child: ShowGraph(),
            ),

           
            
            Card(
                    color: Colors.purple,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Sleep"),
                          Text("8h 20m"),
                         // Image.network("https://tse2.mm.bing.net/th?id=OIP.Vh3DEruQntlo0dthv5goOQHaGm&pid=Api&P=0",fit: BoxFit.fill,)
                        ],
                      ),
                      
                      height:150 ,
                      width: 350,
                    ),
                  ),
            Container(
              
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(10)
              ),
              height: 50,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Daily Sleep Schedule"),
                    FlatButton(
                      color: Colors.blue,
                      onPressed: (){}, child: Text("Check"))
                  ],
                ),
              ),
            ),

SizedBox(height: 10,),
            Text("Today Schedule"),
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
           
          ],
        ),
      )
    );
  }
}