import 'dart:convert';
import 'dart:ui';

import 'package:befit/Showgraph.dart';
import 'package:befit/Viewgym.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController search=TextEditingController();
   final List<Feature> features = [
    Feature(
      title: "Flutter",
      color: Colors.blue,
      data: [0.3, 0.6, 0.8, 0.9, 1, 1.2],

    ),];
  first(String str,String url){
    return   Container(
                          child: Column(
                            children: [

                              // Container(
                              //   child: Image.network(url,fit: BoxFit.fill,),
                              //   height: 50,
                              //   width: 40,
                              //   decoration: BoxDecoration(
                              //     color: Colors.black,
                              //     borderRadius: BorderRadius.circular(100)
                              //   ),
                              // ),
                              CircleAvatar(
                                radius: 20,
                                backgroundImage:NetworkImage(url,),
                                backgroundColor: Colors.transparent,
                              ),
                              Text(str),
                              SizedBox(width: 100,)
                            ],
                          ),
                         );
  }

  second(String str,String str1,String str2,String url){
    return  GestureDetector(
      onTap: (){
        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Viewgym(

        // )));
      },
      child: Container(
                           // color: Colors.black,
                            decoration: BoxDecoration(
                                  
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                            ),   
                            child:  Card(
                              
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Container(
                                   decoration: BoxDecoration(
                                       
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                           
                            ), 
                            child: Image.network(url,fit: BoxFit.fill,),
                                //  height: 230,
                                //   width: 250,
                                 ),
                                 Text(str),
                                 Text(str1.substring(0,40)),
                                Text(str2)
                              ],
                            ), 
                         ),
                           ),
    );
  }

  third(String str,String str1,String str2){
    return GestureDetector(
       onTap: (){
        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Viewgym()));
      },
      child: Container(
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
                           ),
    );
  }
  dot(){
    return                         
  
        
        Column(
          children: [
            SizedBox(height: 4),
            Container(
              
                                    height: 7,
                                    width: 3,
                                    color: Colors.blue,
                                  ),
          ],
        );
  }
  dots(){
   return Row(
                            children: [
                              SizedBox(width: 3,),
                              dot()
                            ],
                          );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Color.fromARGB(255, 243, 243, 243),

    
      // appBar: AppBar(
      //   title: Text("Befit"),
      //   centerTitle: true,
      // ),

      body:FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString("asset/gym.json"),
        builder: (context,snapshot){
          var mydata=json.decode(snapshot.data.toString());
          if(mydata==null){
            return CircularProgressIndicator();
          }else{
           return  
           
           SingleChildScrollView(
      
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
               
             Stack(
      children: [
        Container(
      //height: 250,
      color: Colors.white,
        ),
      //  SizedBox(height: 10,),
        Positioned(
       
         
      child:   Container(
        
    
         color: Colors.grey,
        
        //width: 400,
        


        
        
      height: 140,
        
        )),

        Positioned(
          top: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
               SizedBox(width: MediaQuery.of(context).size.width/3,),
              Text("Befit"),
            ],
          ),
        
        
        ),
        
        Positioned(
      top: 80,
       left: 25,
      child:   Container(
      height: 50,
      width: 300,
      color: Colors.white,
      child:   Container(
      
        height:MediaQuery.of(context).size.width/8 ,
        child: TextFormField(
         
          decoration: InputDecoration(

            prefixIcon:Icon(Icons.search),
            hintText: "Search for gym , city or location",
            // border: OutlineInputBorder(
            //   borderSide: BorderSide(
            //     color: Colors.black
            //   )
            // )
              
          ),
          controller: search,
          style: TextStyle(
          ),
        ),
      ),
        ),
        )
      ],
      ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10,top: 20),
            //   child: Container(
            //     height: 50,
            //     child: TextFormField(
                 
            //       decoration: InputDecoration(
            //         prefixIcon:Icon(Icons.search),
            //         hintText: "Search for gym , city or location",
            //         border: OutlineInputBorder(
            //           borderSide: BorderSide(
            //             color: Colors.black
            //           )
            //         )
                      
            //       ),
            //       controller: search,
            //       style: TextStyle(
            //       ),
            //     ),
            //   ),
            // ),
           
           SizedBox(height: 10,),
           SizedBox(
             height: 70,
             child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context,int i){
                return first(mydata[i]['name'],mydata[i]['images'][0]);
              },
             

                     // This next line does the trick.
                     scrollDirection: Axis.horizontal,
                    //  children: <Widget>[

                      
                    //  SizedBox(width: 10,),
                    //  first(mydata[0]["name"]),
                    //  SizedBox(width: 10,),
                    //  first(mydata.toString().length.toString()),
                    //  SizedBox(width: 10,),
                    //  first("Goa"),
                    //  SizedBox(width: 10,),
                    //  first("Kolkata"),
                    //  SizedBox(width: 10,),
                    //  first("Kolkata"),
                    //  SizedBox(width: 10,),
                    //   first("Kolkata"),
                    //  SizedBox(width: 10,),
                    //   first("Kolkata"),
                    //  SizedBox(width: 10,),
                    //  ],
                ),
           ),

           Padding(
             padding: const EdgeInsets.only(left: 8.0),
             child: Text("Recommended gym for you"),
           ),
           SizedBox(height: 20,),
            SizedBox(
             height: 300,
             child: ListView.builder(
             itemCount: 10,
             itemBuilder: (context,int i){
              return   GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Viewgym(
          name: mydata[i]['name'],
          description: mydata[i]['description'],
          address:mydata[i]['address'] ,
          price: mydata[i]['booking_fees'],
          rating: mydata[i]['rating'],
          images:mydata[i]['images'][0].toString(),
          email:  mydata[i]['email'],
          phone:  mydata[i]['phone no'],
        )));
      },
      child: Container(
                           // color: Colors.black,
                            decoration: BoxDecoration(
                                  
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                            ),   
                            child:  Card(
                              
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Container(
                                   decoration: BoxDecoration(
                                       
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                           
                            ), 
                            child: Image.network(mydata[i]['images'][0].toString(),
                            
                            fit: BoxFit.fill,),
                                 height: 230,
                                  width: 250,
                                 ),
                                 Text(mydata[i]['name']),
                                 Text(mydata[i]['address'].substring(0,40)),
                                Text(mydata[i]['booking_fees'])
                              ],
                            ), 
                         ),
                           ),
    );
              
              // second(mydata[i]['name'], mydata[i]['address'], mydata[i]['booking_fees'],mydata[i]['images'].toString());
             },

                     // This next line does the trick.
                     scrollDirection: Axis.horizontal,
                    //  children: <Widget>[

                    //   second("SK27 GYM", "Near President House , Delhi", "Starting Rs.89/Day "),
                    //   SizedBox(width: 20,),
                    //   second("Lion's Gym", "Near President House , Delhi", "Starting Rs.70/DAy")
                      
                    //  ],
                ),
           ),
            SizedBox(height: 20,),
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
             child: ListView.builder(
             itemCount: 10,
             itemBuilder: (context,int i){
              return   GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Viewgym(
           name: mydata[i]['name'],
               description: mydata[i]['description'],
          address:mydata[i]['address'] ,
          price: mydata[i]['booking_fees'],
          rating: mydata[i]['rating'],
          images:mydata[i]['images'][0].toString(),
            email:  mydata[i]['email'],
          phone:  mydata[i]['phone no'],
        )));
      },
      child: Container(
                           // color: Colors.black,
                            decoration: BoxDecoration(
                                  
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                            ),   
                            child:  Card(
                              
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Container(
                                   decoration: BoxDecoration(
                                       
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                           
                            ), 
                            child: Image.network(mydata[i]['images'][0].toString(),
                            
                            fit: BoxFit.fill,),
                                 height: 230,
                                  width: 250,
                                 ),
                                 Text(mydata[i]['name']),
                                 Text(mydata[i]['address'].substring(0,40)),
                                Text(mydata[i]['booking_fees'])
                              ],
                            ), 
                         ),
                           ),
    );
              
              // second(mydata[i]['name'], mydata[i]['address'], mydata[i]['booking_fees'],mydata[i]['images'].toString());
             },

                     // This next line does the trick.
                     scrollDirection: Axis.horizontal,
                    //  children: <Widget>[

                    //   second("SK27 GYM", "Near President House , Delhi", "Starting Rs.89/Day "),
                    //   SizedBox(width: 20,),
                    //   second("Lion's Gym", "Near President House , Delhi", "Starting Rs.70/DAy")
                      
                    //  ],
                ),
           ),
           SizedBox(height: 20,),

             SizedBox(height: 20),
              Padding(
             padding: const EdgeInsets.only(left: 8.0),
             child: Text("Activity Status"),
           ),
           SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                  width: 160,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                        height: 320,
                        width: 30,
                        child: LiquidLinearProgressIndicator(
                          borderRadius: 20,
                
                          direction: Axis.vertical,
                          value: 0.5,
                        ),
                      ),
                
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("data"),
                          Text("data"),
                          Text("data"),
                
                        
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(minRadius: 5,),
                
                              SizedBox(width: 10,),
                              Text("9am - 11am"),
                
                
                            ],
                          ),
                         dots(),
                         dots(),
                         dots(),
                          
                          
                         
                              Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(minRadius: 5,),
                
                              SizedBox(width: 10,),
                              Text("9am - 11am"),
                
                
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: 3,),
                          dot()
                        , SizedBox(width: 10,),
                          Text("100ml")
                            ],
                          ),
                          dots(),
                          dots(),
                          dots(),
                          
                             Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(minRadius: 5,),
                
                              SizedBox(width: 10,),
                              Text("9am - 11am"),
                
                
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [SizedBox(width: 3,),
                          dot()
                        , SizedBox(width: 10,),
                          Text("100ml")
                            ],
                          ),
                          dots(),
                          
                          dots(),
                          dots(),
                             Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(minRadius: 5,),
                
                              SizedBox(width: 10,),
                              Text("9am - 11am"),
                
                
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [SizedBox(width: 3,),
                          dot()
                        , SizedBox(width: 10,),
                          Text("100ml")
                            ],
                          ),
                          dots(),
                          dots(),
                          
                          dots(),
                              Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(minRadius: 5,),
                
                              SizedBox(width: 10,),
                              Text("9am - 11am"),
                
                
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                      
                        SizedBox(width: 10,),
                          Text(" 100ml")
                            ],
                          ),
                        
                          
                
                        ],
                      )
                        ],
                      ),
                    )
                  
                  ),
                ),
                
                Column(
                  children: [
                    Card(
                      color: Colors.white10,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Calories"),
                            Text("700 kCal"),
                              Stack(

                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    child: CircularProgressIndicator(
                                      backgroundColor: Colors.blue,
                                      strokeWidth: 10,
                                      value: .3,
                                      color: Colors.white,
                                      
                                    ),
                                  ),
                                  Positioned(
                                    top:10,
                                    left: 10,
                                    child: CircleAvatar(
                                      child: Text("230kCal\nleft",textAlign: TextAlign.center,),
                                      maxRadius:40
                                  )
                                  
                                  
                                  )
                                  
                                ],
                              )

                            // Container(
                            //    decoration: BoxDecoration(
                            //         color: Colors.blue,
                            //         borderRadius: BorderRadius.circular(60)
                            //       ),
                            //   height: 120,
                            //   width: 120,
                              
                            //   child: Center(child: Container(
                            //     // height: 100,
                            //     // width: 100,
                                
                            //     child: Center(
                            //       child: Container(
                            //          height: 100,
                            //          width: 100,
                            //          decoration: BoxDecoration(
                            //           color: Colors.white,
                            //           borderRadius: BorderRadius.circular(50)
                            //         ),
                            //         child: Center(
                            //           child: Container(
                                        
                            //             decoration: BoxDecoration(
                            //           color: Colors.green,
                            //           borderRadius: BorderRadius.circular(50)
                            //         ),
                            //             height: 70,
                            //     width: 70,
                            //           ),
                            //         ),
                            //       ),
                            //     ),
                
                                
                            //    )),
                            // ),
                          
                            
                  
                          ],
                        ),
                        
                        height:160 ,
                        width: 160,
                      ),
                    ),
                    SizedBox(height: 10,),
                  Card(
                      color: Colors.white10,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Sleep"),
                            Text("8h 20m"),
                            Image.network("https://tse2.mm.bing.net/th?id=OIP.Vh3DEruQntlo0dthv5goOQHaGm&pid=Api&P=0",fit: BoxFit.fill,)
                          ],
                        ),
                        
                        height:180 ,
                        width: 160,
                      ),
                    ),
                  ],
                ),
                  ],
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Workout Progress"),
                    ElevatedButton(
                      style: ButtonStyle(
                        
                      ),
                      onPressed: (){}, child: Text("Weekly"))
                  ],
                ),
              ),
              SizedBox(height: 10,),
            
              Container(
              alignment: Alignment.center,
           padding: EdgeInsets.only(left: 40,right: 40,top: 10),
              color: Colors.white,
              height: 200,
              width: 400,
              child: Center(child: ShowGraph()),
            ),
             Padding(
             padding: const EdgeInsets.only(left: 8.0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("Latest Workout"),
                 TextButton(onPressed: (){}, child: Text("See more"))
               ],
             ),
           ),
           SizedBox(height: 20,),
              Card(



                   child: ListTile(
                  
                  leading: CircleAvatar(),
                  title: Text("Full Body Workout"),
                  subtitle:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("180 calori burn|20 minutes"),
                      SizedBox(height: 10,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: LinearProgressIndicator(color: Colors.blue,
                        value: 0.5,
                        backgroundColor: Colors.white,
                        minHeight: 12,

                        ),
                      )
                    ],
                  ),
                  trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios_rounded),
                  
                )
                ),
              ),
              SizedBox(height: 20),
              Padding(
             padding: const EdgeInsets.only(left: 8.0),
             child: Text("Daily Review"),
           ),
           SizedBox(height: 20),
              
               Card(



                   child: ListTile(
                  
                  leading: CircleAvatar(),
                  title: Text("Full Body Workout"),
                  subtitle:Text("180 calori burn|20 minutes"),
                  trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios_rounded),
                  
                )
                ),
              ),

             
             
          ],
        ),
      );
          }
        }
      ),
      
      
      
    );
  }
}