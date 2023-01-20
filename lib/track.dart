

import 'package:befit/Showgraph.dart';
import 'package:flutter/material.dart';

class Track extends StatefulWidget {
  const Track({Key? key}) : super(key: key);

  @override
  State<Track> createState() => _TrackState();
}

class _TrackState extends State<Track> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:      SingleChildScrollView(
        child: Column(
        //  mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
                  SizedBox(width:100),
                  Text("Sleep Tracker")
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
           padding: EdgeInsets.only(left: 50,right: 50,top: 10),
              color: Colors.white,
              height: 200,
              width: 400,
              child: Center(child: ShowGraph()),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              
              ),
              child: Container(
                decoration: BoxDecoration(
                  
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.only(left: 15,right: 8),
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Daily Workout Schedule"),
                            FlatButton(onPressed: (){}, child: Text("Check"))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Upcomming Workout"),
                              TextButton(onPressed: (){}, child: Text("Check"))
                            ],
                          ),
                    ),
                    ListTile(
                      leading:CircleAvatar(),
                      title: Text("Full Body Workout"),
                      subtitle: Text("Today 5:00 pm"),
                      trailing: Switch(value: true, onChanged: (vallue){}),
                    ),
                       ListTile(
                      leading:CircleAvatar(),
                      title: Text("Upper Body Workout"),
                      subtitle: Text("June 5 2:00 pm"),
                      trailing: Switch(value: false, onChanged: (vallue){}),
                    ),
                    Padding(
                     padding: const EdgeInsets.only(left: 15.0,right: 30,top: 8,bottom: 8),
                      child: Text("What Do you want to train"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0,right: 30,top: 8,bottom: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.lightBlue
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Full Body Workout"),
                                  Text("11 exercise | 32mins"),
                                  FlatButton(onPressed: (){}, 
                                  color: Colors.white,
                                  child: Text("View more")),
                  
                                ],
                              ),
                              CircleAvatar()
                            ],
                          ),
                        ),
                      ),
                    ),
                       Padding(
                      padding: const EdgeInsets.only(left: 30.0,right: 30,top: 8,bottom: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.lightBlue
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Full Body Workout"),
                                  Text("11 exercise | 32mins"),
                                  FlatButton(onPressed: (){}, 
                                  color: Colors.white,
                                  child: Text("View more")),
                  
                                ],
                              ),
                              CircleAvatar()
                            ],
                          ),
                        ),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(left: 30.0,right: 30,top: 8,bottom: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.lightBlue
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Full Body Workout"),
                                  Text("11 exercise | 32mins"),
                                  FlatButton(onPressed: (){}, 
                                  color: Colors.white,
                                  child: Text("View more")),
                  
                                ],
                              ),
                              CircleAvatar()
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                
                  
              ),
            )
        ],
          ),
      ),
    );
    
    

  }
}