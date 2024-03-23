import 'package:first/screens/home_page.dart';
import 'package:first/screens/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

late PersistentTabController _controller;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    _controller = PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens() {
      return [
        HomePage(),
        Screen2(), // Example screen 2
        Screen3(),
        UserProfile() // Example screen 3
      ];
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
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(20.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style9, // Choose the nav bar style with this property.
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
