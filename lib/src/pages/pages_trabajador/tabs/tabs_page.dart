import 'package:aplication_seekmant/src/pages/pages_trabajador/tabs/profile_tab.dart';
import 'package:aplication_seekmant/src/pages/pages_trabajador/tabs/agregar_tab.dart';
import 'package:aplication_seekmant/src/pages/pages_trabajador/tabs/agendar_tab.dart';
import 'package:flutter/material.dart';

class TabsPageTrabajador extends StatefulWidget {
  TabsPageTrabajador({Key? key}) : super(key: key);

  @override
  _TabsPageTrabajadorState createState() => _TabsPageTrabajadorState();
}

class _TabsPageTrabajadorState extends State<TabsPageTrabajador> {
  List<Widget> _widgetOptions = [
    AgregarTabTrab(),
    AgendarTabTrab(),
    ProfileTabTrab(),
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
        selectedItemColor: Color.fromRGBO(36, 105, 160, .8),
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedItemIndex,
        onTap: _cambiarWidget,
        //showSelectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Agregar'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Agendar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Perfil'),
        ]);
  }
}
