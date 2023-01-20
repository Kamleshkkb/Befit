import 'package:flutter/material.dart';

class Viewgym extends StatefulWidget {
   Viewgym({Key? key, required this.name, required this.address, required this.rating, required this.price, required this.images, required this.description, required this.email, required this.phone}) : super(key: key);
  final String name;
  final String address;
  final double rating;
  final  String price;
 final String images;
 final String description;
 final String email;
 final String phone;


  @override
  State<Viewgym> createState() => _ViewgymState();
}

class _ViewgymState extends State<Viewgym> {

  fun1(String str){
    return  Stack(
                  children: [
                     Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)
                      ),
                  height: 100,
                  width: 130,

                  child: Image.network(widget.images,fit: BoxFit.fill,),

                ),
                Positioned(
                  left: 10,
                  top: 70,
                  child: Text(str))
                  ],
                );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              child: Image.network(widget.images,fit: BoxFit.fill,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(widget.name,
          
              ),
            ),
            ListTile(
             
              title: Row(
                children: [
                  Icon(Icons.location_pin),
                   Text(widget.address.substring(0,35)),
                ],
              ),
              
             
              // subtitle: ListView.builder(
              //   scrollDirection: Axis.horizontal,
              //   itemCount: widget.rating.toInt(),
              //   itemBuilder: (
                
              //   context,int i){
              //   return Icon(Icons.star,color: Colors.amber,);
              // },),
              
              // Row(
              //   children: [
              //     widget.rating==1? Icon(Icons.star):
                 
                   
              //       Icon(Icons.star),
              //       Icon(Icons.star_border),
              //         Icon(Icons.star_border),
              //          Text("no. Review"),
              //   ],
              // ), 
              
         
              trailing: Icon(Icons.location_pin),
      
            ),
      
            Padding(
              padding: const EdgeInsets.only(left: 20.0,bottom: 10),
              child: Column(
                children: [
                   Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Galllery Photos"),
                  TextButton(onPressed: (){}, child: Text('See all'))
                ],
              ),
              SizedBox(
              height: 100,
              child: ListView(
      
                scrollDirection: Axis.horizontal,
                children: [
      
                fun1("Trainers"),
                SizedBox(width: 10,),
                fun1("Zumbo"),
                 
                ],
              ),
            ),
      
      
                ],
              )
              
             
            ),
      
            // Container(
            //   padding: EdgeInsets.only(left: 20,bottom: 10),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //        Text("Details"),
            //        SizedBox(height: 10,),
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceAround,
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Column(
            //       children: [
            //         Icon(Icons.house,color: Colors.red,),
            //         Text("Stream Bath"),
            //       ],
            //     ),
            //     Column(
            //       children: [
            //         Icon(Icons.room_service,color: Colors.red,),
            //         Text("Rest room"),
            //       ],
            //     ),
            //     Column(
            //       children: [
            //         Icon(Icons.pool,color: Colors.red,),
            //         Text("Swimming pool"),
            //       ],
            //     ),
            //     Column(
            //       children: [
            //         Icon(Icons.square_foot,color: Colors.red,),
            //         Text("3000 sqf"),
            //       ],
            //     ),
      
                
            //   ],
            // )
            //     ],
            //   ),
            // ),
      
            
            
      
            Container(
             padding: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Text("Description \n"+widget.description)
                ],
              ),
            ),
      SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.price),
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: FlatButton(onPressed: (){}, child: Text("Book Now")))
                ],
              ),
            ),
      
            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 20.0,),
              child: Text("Email -"+widget.email),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,),
              child: Text("Phone no. -"+widget.phone),
            ),
      
           
            
      
            
          ],
        ),
      ),
    );
  }
}