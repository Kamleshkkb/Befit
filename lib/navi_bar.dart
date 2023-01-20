


import 'package:befit/Home.dart';
import 'package:befit/Search.dart';
import 'package:befit/Showgraph.dart';
import 'package:befit/map.dart';
import 'package:befit/method.dart';
import 'package:befit/notification.dart';
import 'package:befit/profile.dart';
import 'package:befit/track.dart';
import 'package:befit/widgettoimage.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:flutter/material.dart';
class NaviBar extends StatelessWidget {
  const NaviBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller = PersistentTabController(initialIndex: 0);
    bool _hideNavBar = false;

    @override
    void initState() {
     
      
      
    }

    List<Widget> _buildScreens() {
      return [
       Home(),
       Track(),
       Search1(),
       App(),
       MapSample()

      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Icon(Icons.home_outlined),
         
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: Colors.grey,
          inactiveColorSecondary: Colors.purple,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.message),
         
          activeColorPrimary: Colors.teal,
          inactiveColorPrimary: Colors.grey,
         
        ),
        PersistentBottomNavBarItem(
            icon: Icon(Icons.search_outlined),
           
            activeColorPrimary: Colors.blue,
            activeColorSecondary: Colors.white,
            inactiveColorPrimary: Colors.white,
          
            
            ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.notifications),
          
          activeColorPrimary: Colors.deepOrange,
          inactiveColorPrimary: Colors.grey,
        
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.person),
         
          activeColorPrimary: Colors.indigo,
          inactiveColorPrimary: Colors.grey,
         
        ),
      ];
    }
    return Scaffold(
      backgroundColor: Color.fromARGB(190, 255, 255, 255),
      body:  PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style15, // Choose the nav bar style with this property.
    )
    );
 
  }

  

}
    
    




