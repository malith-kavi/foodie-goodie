import 'package:first/screens/Suggestions.dart';
import 'package:first/screens/home_page.dart';
import 'package:first/screens/meal_plan.dart';
import 'package:first/screens/meal_plan_dash.dart';
import 'package:first/screens/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

late PersistentTabController _controller;

class Dash extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    _controller = PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens() {
      return [HomePage(), Suggestions(), Mealhistory(), UserProfile()];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Icon(Icons.home_rounded),
          title: "Home",
          activeColorPrimary: const Color.fromARGB(255, 0, 187, 24),
          inactiveColorPrimary: const Color.fromARGB(255, 0, 0, 0),
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.lightbulb),
          title: ("Suggestion"),
          activeColorPrimary: const Color.fromARGB(255, 0, 187, 24),
          inactiveColorPrimary: const Color.fromARGB(255, 0, 0, 0),
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.fastfood_rounded),
          title: ("Meals"),
          activeColorPrimary: const Color.fromARGB(255, 0, 187, 24),
          inactiveColorPrimary: const Color.fromARGB(255, 0, 0, 0),
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.person),
          title: ("Profile"),
          activeColorPrimary: const Color.fromARGB(255, 0, 187, 24),
          inactiveColorPrimary: const Color.fromARGB(255, 0, 0, 0),
        ),
      ];
    }

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(20.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style9,
    );
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text("Screen 1"),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Text("Screen 2"),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text("Screen 3"),
      ),
    );
  }
}
