import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin<Home> {
  static List<Destination> allDestinations = <Destination>[
    Destination('Home', Icons.home, Colors.teal),
    Destination('Add', Icons.add, Colors.cyan),
    Destination('History', Icons.history, Colors.orange),
    Destination('Meals', Icons.fastfood_rounded, Colors.blue),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: allDestinations[selectedIndex].widget,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),

          // Set background color here
          selectedItemColor: Colors.green,
          items: allDestinations
              .map((destination) => BottomNavigationBarItem(
                    icon: Icon(destination.icon),
                    label: destination.title,
                  ))
              .toList(),
        ),
      ),
    );
  }
}

class Destination {
  final String title;
  final IconData icon;
  final Color color;
  final Widget widget;

  Destination(this.title, this.icon, this.color) : widget = _buildWidget(title);

  static Widget _buildWidget(String title) {
    switch (title) {
      case 'Home':
        return RootPage();
      case 'Add':
        return ListPage();
      case 'History':
        return TextPage();
      case 'Meals':
        return Container(); // Placeholder for Meals page
      default:
        return Container(); // Placeholder for other cases
    }
  }
}

class RootPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu_rounded),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        //title: Text('${destination.title} '),
        actions: <Widget>[
          IconButton(
              icon:
                  const Icon(Icons.notifications_active, color: Colors.black54),
              onPressed: () {}),
          IconButton(
              icon:
                  Image.asset('assets/images/Male.png', width: 35, height: 35),
              onPressed: () {}),
        ],
        backgroundColor: Colors.transparent,
        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.message),
              title: const Text('message'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('person'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('person'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('person'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('person'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Home Page Content'),
      ),
    );
  }
}

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Page'),
      ),
      body: Center(
        child: Text('Add Page Content'),
      ),
    );
  }
}

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History Page'),
      ),
      body: Center(
        child: Text('History Page Content'),
      ),
    );
  }
}
