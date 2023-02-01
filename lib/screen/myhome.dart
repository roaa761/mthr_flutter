import 'package:flutter/material.dart';

import 'sender.dart';
import 'home.dart';

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int currentIndex = 0;

  List <Widget>pages = [
    const Home(),
    Sender(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),
              label: ('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.wysiwyg_outlined),label: ('Order'))
        ],
      ),
    );
  }
}
