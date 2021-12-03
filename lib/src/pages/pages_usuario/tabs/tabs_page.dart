import 'package:aplication_seekmant/src/pages/pages_usuario/tabs/home_tab.dart';
import 'package:aplication_seekmant/src/pages/pages_usuario/tabs/profile_tab.dart';
import 'package:aplication_seekmant/src/pages/pages_usuario/tabs/search_tab.dart';
import 'package:flutter/material.dart';

class TabsPageUser extends StatefulWidget {
  TabsPageUser({Key? key}) : super(key: key);

  @override
  _TabsPageUserState createState() => _TabsPageUserState();
}

class _TabsPageUserState extends State<TabsPageUser> {
  List<Widget> _widgetOptions = [
    HomeTab(),
    SearchTab(),
    ProfileTab(),
  ];

  int _selectedItemIndex = 0;

  void _cambiarWidget(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedItemIndex),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
        iconSize: 30.0,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedItemIndex,
        onTap: _cambiarWidget,
        //showSelectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Categoria'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin), label: 'Perfil'),
        ]);
  }
}
