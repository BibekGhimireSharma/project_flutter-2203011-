import 'package:flutter/material.dart';

import 'Home.dart';
import 'Marksheet.dart';
import 'certificate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int myIndex = 0;
  List pages = const [Home(), Marksheet(), Certificate()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
        title: Text(
          'IDmine',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            letterSpacing: 4.0,
          ),
        ),

        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellow,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 20.0,
        unselectedFontSize: 15.0,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/home.png', height: 30),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/marksheet.png', height: 30),
            label: 'Mark-sheet',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/certificate.png', height: 30),
            label: 'Certificate',
          ),
        ],
      ),
      body: pages[myIndex],
    );
  }
}
