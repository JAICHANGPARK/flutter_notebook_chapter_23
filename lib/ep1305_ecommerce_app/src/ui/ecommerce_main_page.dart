import 'package:flutter/material.dart';

class EcommerceMainPage extends StatefulWidget {
  const EcommerceMainPage({Key? key}) : super(key: key);

  @override
  State<EcommerceMainPage> createState() => _EcommerceMainPageState();
}

class _EcommerceMainPageState extends State<EcommerceMainPage> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _pageIndex,
          children: [
            Center(
              child: Text(_pageIndex.toString()),
            ),
            Center(
              child: Text(_pageIndex.toString()),
            ),
            Center(
              child: Text(_pageIndex.toString()),
            ),
            Center(
              child: Text(_pageIndex.toString()),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: (idx) {
          setState(() {
            _pageIndex = idx;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_none), label: "Notifications"),
          BottomNavigationBarItem(icon: Icon(Icons.perm_identity), label: "Profile"),
        ],
      ),
    );
  }
}
