import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile"),
      centerTitle:true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0,left: 20),
              child: Container(
               
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(),
                    Column(
                      children: [
                        
                        Text("Shashank Dubey"),
                        Text("Lose a Fat Program"),
                      ],
                    ),
                    RaisedButton(onPressed: (){},child: Center(child: Text("Edit"),)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("180 cm\nHeight"),
                Text("65 Kg\nWeight"),
                Text("22 yo\nAge")
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 40.0,bottom: 5),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Account",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                             Icon(Icons.person),
          
                              SizedBox(width: 20,),
                             Text("Personal Data"),
                          ],
                        ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                    ],),
          
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                             Icon(Icons.person),
          
                              SizedBox(width: 20,),
                             Text("Achievement"),
                          ],
                        ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                    ],),
                   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                             Icon(Icons.person),
          
                              SizedBox(width: 20,),
                             Text("Activity History "),
                          ],
                        ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                    ],),
                 Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                             Icon(Icons.person),
          
                              SizedBox(width: 20,),
                             Text("Workout Progress"),
                          ],
                        ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                    ],),
                  
                  ],
                ),
              ),
          
              
            ),
          
            Padding(
              padding: const EdgeInsets.only(left: 40.0,bottom: 5),
              child: Container(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Notification",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                               Icon(Icons.notifications),
          
                                SizedBox(width: 20,),
                               Text("Pop-up Notification"),
                            ],
                          ),
                        Switch(
                        
                          value: true, onChanged: (bool){})
                      ],),
                  ],
                ),
              ),
            ),
          
              Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Container(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Other",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                             Icon(Icons.mail),
          
                              SizedBox(width: 20,),
                             Text("Contact Us "),
                          ],
                        ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                    ],),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                             Icon(Icons.privacy_tip),
          
                              SizedBox(width: 20,),
                             Text("Privacy Policy "),
                          ],
                        ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                    ],),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                             Icon(Icons.settings),
          
                              SizedBox(width: 20,),
                             Text("Settings "),
                          ],
                        ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                    ],),
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