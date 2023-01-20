import 'dart:async';
import 'dart:typed_data';
import 'dart:ui'as ui;
import 'package:befit/utils.dart';
import 'package:befit/widgettoimage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:marker_icon/marker_icon.dart';

class MapSample extends StatefulWidget {
  const MapSample({Key? key}) : super(key: key);

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {


  
  GlobalKey key1=GlobalKey();
  late Uint8List bytes1;
markericon(){
  return Stack(
    children: [
      RepaintBoundary(
        key: key1,
        child: IconButton(onPressed: (){},icon: Icon(Icons.star),),
      )
    ],
  );
}
//BitmapDescriptor testIcon = await getCustomIcon(key1);

Future<BitmapDescriptor> getCustomIcon(GlobalKey iconKey) async {
  _capturePng(GlobalKey iconKey) async {
  try {
    if(iconKey==null) return null;
    print('inside');
   RenderRepaintBoundary boundary = iconKey.currentContext!.findRenderObject()! as RenderRepaintBoundary;
    ui.Image image = await boundary.toImage(pixelRatio: 3.0);
    final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    final pngBytes = byteData!.buffer.asUint8List();
    print(pngBytes);
    return pngBytes;
  } catch (e) {
    print(e);
  }
}

  Uint8List? imageData = await _capturePng(iconKey);
 // log("testIcon set");
  return BitmapDescriptor.fromBytes(imageData!);
}



  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(22.9676, 76.0534),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      
      target: LatLng(22.9676, 76.0534),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
 Set<Marker> _markers={};
      funadd(){
      // BitmapDescriptor testIcon =await getCustomIcon(key1);
      _markers.add(
  Marker(
                  markerId: MarkerId('circleCanvasWithText'),
                  // icon:  MarkerIcon.widgetToIcon(globalKey),
                  position: LatLng(26.8496, 81.0072),
                  infoWindow: InfoWindow(title: "Rp 3000"),
                  
              //    icon: testIcon,
                  //  Image(image:Image.memory(Utils.capture(key1)) )    
                  
                  
                ),
      );
       _markers.add(
   Marker(
                  markerId: MarkerId('circleCanvasWithText'),
             
                  // icon:  MarkerIcon.widgetToIcon(globalKey),
                  position: LatLng(22.9622, 76.0481),
                  infoWindow: InfoWindow(title: "Rp 6000")
                ),
      );
       _markers.add(
  Marker(
                  markerId: MarkerId('circleCanvasWithText'),
                  // icon:  MarkerIcon.widgetToIcon(globalKey),
                  position: LatLng(22.9661, 76.0497),
                  infoWindow: InfoWindow(title: "Rp 5000")
                ),
      );
       _markers.add(
   Marker(
                  markerId: MarkerId('circleCanvasWithText'),
                  // icon:  MarkerIcon.widgetToIcon(globalKey),
                  position: LatLng(22.9640, 76.0545),
                  infoWindow: InfoWindow(title: "Rp 4000")
                ),
      );
      }
   
               
                
                

  
      

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          RepaintBoundary(
        key: key1,
        child: Container(height: 30,width: 100,child: Center(
          child: Text(
            textAlign: ui.TextAlign.center,
            
           "Rp 132.345",style: TextStyle(color: 
            
            Colors.white,
            
            ),
          
          ),
        ),color: Colors.black),
      ),

 GoogleMap(
        myLocationEnabled: true,
        mapType: MapType.normal,
        

        initialCameraPosition: _kGooglePlex,
        markers: _markers,

        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
          
        },
      ),
      Positioned(
          top: 400,
          left: 70,
        child: Container(height: 300,width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
        ),
              height: 200,
              width: 250,
              

            ),
            Container(
              decoration: BoxDecoration(
                 color: Colors.black,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
        ),
             

              child: Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                         
                         Icon( Icons.star,color: Colors.amber,),
                         Icon( Icons.star,color: Colors.amber),
                         Icon( Icons.star_border,color: Colors.amber),
                         Icon( Icons.star_border,color: Colors.amber),

                        ],
                      ),
                      Text("Gym Name",style: TextStyle(color: Colors.white),),
                      Text("Address",style: TextStyle(color: Colors.white)),
                      Text("100 Review",style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Rs.188/Day",style: TextStyle(color: Colors.white)),
                      FlatButton(
                        color: Colors.blue,
                        onPressed: (){
                          setState(() async{
                                  BitmapDescriptor testIcon =await getCustomIcon(key1);
      _markers.add(
  Marker(
                  markerId: MarkerId('1234'),
                  // icon:  MarkerIcon.widgetToIcon(globalKey),
                  position: LatLng(22.9676, 76.0534),
                  infoWindow: InfoWindow(title: "Rp 3000"),
                  
                 icon: testIcon,
                  //  Image(image:Image.memory(Utils.capture(key1)) )    
                  
                  
                ),
      );
           _markers.add(
  Marker(
                  markerId: MarkerId('123'),
                  // icon:  MarkerIcon.widgetToIcon(globalKey),
                  position: LatLng(26.8496, 81.0072),
                  infoWindow: InfoWindow(title: "Rp 3000"),
                   icon: testIcon,
              //    icon: testIcon,
                  //  Image(image:Image.memory(Utils.capture(key1)) )    
                  
                  
                ),
      );
       _markers.add(
   Marker(
                  markerId: MarkerId('1'),
             
                  // icon:  MarkerIcon.widgetToIcon(globalKey),
                  position: LatLng(22.9622, 76.0481),
                  infoWindow: InfoWindow(title: "Rp 6000"),
                   icon: testIcon,
                ),
      );
       _markers.add(
  Marker(
                  markerId: MarkerId('12'),
                  // icon:  MarkerIcon.widgetToIcon(globalKey),
                  position: LatLng(22.9661, 76.0497),
                  infoWindow: InfoWindow(title: "Rp 5000"),
                   icon: testIcon,
                ),
      );
       _markers.add(
   Marker(
                  markerId: MarkerId('circleCanvasWithText'),
                  // icon:  MarkerIcon.widgetToIcon(globalKey),
                  position: LatLng(22.9640, 76.0545),
                  infoWindow: InfoWindow(title: "Rp 4000"),
                   icon: testIcon,
                ),
      );
                          });
               
                        }, child: Text("Gym Details"))
                    ],
                  )
                ],
              ),
            )

          ],
        ),
        ),
      )
        ],
      ),
      
     
     
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
