

import 'package:befit/map.dart';
import 'package:flutter/material.dart';

class Search1 extends StatefulWidget {
  const Search1({Key? key}) : super(key: key);

  @override
  State<Search1> createState() => _Search1State();
}

class _Search1State extends State<Search1> {
  TextEditingController search=TextEditingController();
  TextEditingController months=TextEditingController(text: "2 months");
  TextEditingController  time=TextEditingController(text: "2 hours");
  TextEditingController members=TextEditingController(text: "2 members");
    third(String str,String str1,String str2){
    return Container(
                       child: Card(
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Container(
                                 decoration: BoxDecoration(
                                 color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),  
                               height: 230,
                                width: 250,
                               ),
                               Text(str),
                               Text(str1),
                              Text(str2)
                            ],
                          ), 
                       ),
                         );
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             
      
      Stack(
        children: [
          Container(
        height: 400,
        color: Colors.white,
          ),
          Positioned(
        
      
        child:   Container(
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
              color: Colors.grey,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),)
          ),
          width: 400,
          
        height: 200,
          
          )),

          Positioned(
            top: 30,
            left: 170,
            child: Text("Befit"),
          ),
          Positioned(
        top: 50,
        left: 50,
        right: 50,
        child:   Container(
        height: 315,
      
        color: Colors.white,
        child:  Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    width: 300,
                    child: Column(
                      children: [
                       
                        TextField(
                          controller: search,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.location_pin),
                            hintText: "Search Location , Gym and Plans",
                            suffixIcon: Icon(Icons.zoom_in)
                          ),
                        ),
                         TextField(
                          controller: months,
                          decoration: InputDecoration(
                             prefixIcon: Icon(Icons.calendar_month),
                            hintText: "3 months",
                          ),
                        ),
                         TextField(
                          controller: time,
                          decoration: InputDecoration(
                             prefixIcon: Icon(Icons.timelapse),
                            hintText: "2 Hours"
                          ),
                        ),
                         TextField(
                          controller: members,
                          decoration: InputDecoration(
                             prefixIcon: Icon(Icons.person),
                            hintText: "2 Members",
                            
                            label: Text("Members")
                          ),
                        ),
                
                        ListTile(
                          leading: Icon(Icons.filter),
                          title: Text("filter price , gym and much more "),
                          trailing: Icon(Icons.arrow_drop_down)
                        ),
                        FlatButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MapSample()));
                        }, 
                        minWidth: 250,
                        color: Colors.blue,
                        child: Text("Find Gym")),
                      ],
                    ),
                  ),
                ),
          ),
          )
        ],
      ),
      Padding(
                 padding: const EdgeInsets.only(left: 20.0),
                 child: Text("Recent Search"),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: ListTile(
                  title: Text("Mumbai"),
                  subtitle: Text("Time ! Members"),
                  trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios),)
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: ListTile(
                  title: Text("Mumbai"),
                  subtitle: Text("Time ! Members"),
                  trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios),)
                 ),
               ),
                 SizedBox(height: 20,),
               Padding(
                 padding: const EdgeInsets.only(left: 8.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("NearBy"),
                    Text("View ALL")
                  ],
                 ),
               ),
               SizedBox(height: 20,),
               SizedBox(
                 height: 300,
                 child: ListView(
                 
      
                         // This next line does the trick.
                         scrollDirection: Axis.horizontal,
                         children: <Widget>[
      
                          third("SK27 GYM", "Near President House , Delhi", "Starting Rs.89/Day "),
                          SizedBox(width: 20,),
                          third("Lion's Gym", "Near President House , Delhi", "Starting Rs.70/DAy")
                          
                         ],
                    ),
               ),
                  Padding(
                 padding: const EdgeInsets.only(left: 8.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Trending Gym Near You"),
                    Text("View ALL")
                  ],
                 ),
               ),
               SizedBox(height: 20,),
               SizedBox(
                 height: 300,
                 child: ListView(
                 
      
                         // This next line does the trick.
                         scrollDirection: Axis.horizontal,
                         children: <Widget>[
      
                          third("SK27 GYM", "Near President House , Delhi", "Starting Rs.89/Day "),
                          SizedBox(width: 20,),
                          third("Lion's Gym", "Near President House , Delhi", "Starting Rs.70/DAy")
                          
                         ],
                    ),
               ),
      
            
          ],
        ),
      )
         

          
         
           

          
      
    );
  }
}

//  Container(
//               height: 100,
//               color: Colors.grey,
//               child: Center(
                
//                 child: Text("data"),
//               ),
//             ),

//              Center(
//               child: Card(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20)
//                 ),
//                 child: Container(
//                   alignment: Alignment.center,
//                   width: 300,
//                   child: Column(
//                     children: [
                     
//                       TextField(
//                         controller: search,
//                         decoration: InputDecoration(
//                           prefixIcon: Icon(Icons.location_pin),
//                           hintText: "Search Location , Gym and Plans",
//                           suffixIcon: Icon(Icons.zoom_in)
//                         ),
//                       ),
//                        TextField(
//                         controller: months,
//                         decoration: InputDecoration(
//                            prefixIcon: Icon(Icons.calendar_month),
//                           hintText: "3 months",
//                         ),
//                       ),
//                        TextField(
//                         controller: time,
//                         decoration: InputDecoration(
//                            prefixIcon: Icon(Icons.timelapse),
//                           hintText: "2 Hours"
//                         ),
//                       ),
//                        TextField(
//                         controller: members,
//                         decoration: InputDecoration(
//                            prefixIcon: Icon(Icons.person),
//                           hintText: "2 Members",
                          
//                           label: Text("Members")
//                         ),
//                       ),
              
//                       ListTile(
//                         leading: Icon(Icons.filter),
//                         title: Text("filter price , gym and much more "),
//                         trailing: Icon(Icons.arrow_drop_down)
//                       ),
//                       FlatButton(onPressed: (){}, 
//                       color: Colors.blue,
//                       child: Text("Find Gym")),
                       

            
                      
              
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//               Padding(
//                padding: const EdgeInsets.only(left: 20.0),
//                child: Text("Recent Search"),
//              ),
//              Padding(
//                padding: const EdgeInsets.all(8.0),
//                child: ListTile(
//                 title: Text("Mumbai"),
//                 subtitle: Text("Time ! Members"),
//                 trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios),)
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.only(left: 8.0),
//                child: ListTile(
//                 title: Text("Mumbai"),
//                 subtitle: Text("Time ! Members"),
//                 trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios),)
//                ),
//              ),
//                SizedBox(height: 20,),
//              Padding(
//                padding: const EdgeInsets.only(left: 8.0),
//                child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text("NearBy"),
//                   Text("View ALL")
//                 ],
//                ),
//              ),
//              SizedBox(height: 20,),
//              SizedBox(
//                height: 300,
//                child: ListView(
               

//                        // This next line does the trick.
//                        scrollDirection: Axis.horizontal,
//                        children: <Widget>[

//                         third("SK27 GYM", "Near President House , Delhi", "Starting Rs.89/Day "),
//                         SizedBox(width: 20,),
//                         third("Lion's Gym", "Near President House , Delhi", "Starting Rs.70/DAy")
                        
//                        ],
//                   ),
//              ),
//                 Padding(
//                padding: const EdgeInsets.only(left: 8.0),
//                child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text("Trending Gym Near You"),
//                   Text("View ALL")
//                 ],
//                ),
//              ),
//              SizedBox(height: 20,),
//              SizedBox(
//                height: 300,
//                child: ListView(
               

//                        // This next line does the trick.
//                        scrollDirection: Axis.horizontal,
//                        children: <Widget>[

//                         third("SK27 GYM", "Near President House , Delhi", "Starting Rs.89/Day "),
//                         SizedBox(width: 20,),
//                         third("Lion's Gym", "Near President House , Delhi", "Starting Rs.70/DAy")
                        
//                        ],
//                   ),
//              ),