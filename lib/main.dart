import 'package:befit/Home.dart';
import 'package:befit/Search.dart';
import 'package:befit/Viewgym.dart';
import 'package:befit/addAlarm.dart';
import 'package:befit/map.dart';
import 'package:befit/navi_bar.dart';
import 'package:befit/new.dart';
import 'package:befit/notification.dart';
import 'package:befit/profile.dart';
import 'package:befit/sleepSchedule.dart';
import 'package:befit/track.dart';
import 'package:befit/viewsleep.dart';
import 'package:flutter/material.dart';
// @dart=2.9
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Befit",
      home:NaviBar()
    );
  }
}