import 'package:flutter/material.dart';
import 'package:hello_flutter/home_page2.dart';
import 'package:hello_flutter/kakao_page.dart';
import 'package:hello_flutter/main.dart';

class Tabpage extends StatefulWidget {
  const Tabpage({Key key}) : super(key: key);

  @override
  _TabpageState createState() => _TabpageState();
}

class _TabpageState extends State<Tabpage> {
  int _selectedIndex = 0;

  final _pages = [
    KakaoPage(),
    const HomePage(),
    const HomePage2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '카카오T'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '카카오T'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '카카오T'),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
