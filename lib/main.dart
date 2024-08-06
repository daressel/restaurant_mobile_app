import 'package:flutter/material.dart';
import 'package:restaurant_mobile_app/feature/card_list/index.dart';
import 'package:restaurant_mobile_app/feature/detailedView/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        'some': (BuildContext context) => MyHomePage(),
        'other': (BuildContext context) {
          return const DetailedView(name: 'name: qwe');
        },
      },
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  String label = '';

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: const CardList(),
      bottomNavigationBar: Container(
          constraints: const BoxConstraints(maxWidth: 30),
          padding: const EdgeInsets.all(15),
          child: buildClipRRect()),
    );
  }

  Widget buildClipRRect() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
        bottomLeft: Radius.circular(30.0),
        bottomRight: Radius.circular(30.0),
      ),
      child: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    void some(int index) {
      label = label + index.toString();
      _onItemTapped(index);
    }

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white24,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.inbox),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: some,
    );
  }
}
