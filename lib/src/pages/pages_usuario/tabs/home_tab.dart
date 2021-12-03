import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomeTab extends StatefulWidget {
  HomeTab({Key? key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Image.asset('images/Logo1.png', width: 160),
      ),
      body: Column(
        children: [
          Container(child: _anuncios()),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 10),
            child: Text(
              'Categorias',
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
          ),
          _category(context),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 10),
            child: Text(
              'Trabajadores recomendados',
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
          ),
          cardsTrabajadores()
        ],
      ),
    );
  }
}

Widget _anuncios() {
  return Center(
    child: Container(
      height: 250,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          new BoxShadow(
              color: Colors.grey.withOpacity(.3),
              offset: new Offset(-10.0, 10),
              blurRadius: 20.0,
              spreadRadius: 4.0)
        ],
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("images/Anuncio.jpg"),
        ),
      ),
    ),
  );
}

Widget _category(BuildContext context) {
  return Container(
    height: 100,
    child: Padding(
      padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
      child: GridView(
        children: [
          //Ferreteria
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(133, 214, 121, .8),
                      offset: Offset(1, 1),
                      blurRadius: 5)
                ],
                color: Color.fromRGBO(133, 214, 121, 1.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.car_repair_rounded,
                    size: 35,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          //Imprenta
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(133, 214, 121, .8),
                      offset: Offset(1, 1),
                      blurRadius: 5)
                ],
                color: Color.fromRGBO(133, 214, 121, 1.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.print_outlined,
                    size: 35,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          //Imprenta
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(133, 214, 121, .8),
                      offset: Offset(1, 1),
                      blurRadius: 5)
                ],
                color: Color.fromRGBO(133, 214, 121, 1.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.handyman_outlined,
                    size: 35,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          //Gastronomia
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(133, 214, 121, .8),
                      offset: Offset(1, 1),
                      blurRadius: 5)
                ],
                color: Color.fromRGBO(133, 214, 121, 1.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.vpn_key,
                    size: 35,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          //Esteticas
          InkWell(
            onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context)=> ));
            },
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(133, 214, 121, .8),
                      offset: Offset(1, 1),
                      blurRadius: 5)
                ],
                borderRadius: BorderRadius.circular(5),
                color: Color.fromRGBO(133, 214, 121, 1.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.content_cut,
                    size: 35,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5, mainAxisSpacing: 5, crossAxisSpacing: 10),
      ),
    ),
  );
}

Widget cardsTrabajadores() {
  return Expanded(
    child: GridView.count(
        padding: EdgeInsets.only(top: 10, left: 20, right: 20),
        mainAxisSpacing: 10,
        crossAxisSpacing: 20,
        crossAxisCount: 2,
        primary: false,
        children: <Widget>[
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 1.5,
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Icon(
                  Icons.vpn_key,
                  size: 40,
                ),
                SizedBox(height: 10),
                Text(
                  'Francisco Perales',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[900]),
                ),
                Text(
                  'Cerrajero',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  '(831)-123-4567\n',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightGreen[900]),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 1.5,
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Icon(
                  Icons.print,
                  size: 40,
                ),
                SizedBox(height: 10),
                Text(
                  'Oscar Avila',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[900]),
                ),
                Text(
                  'Impresor',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  '(831)-107-2934\n',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightGreen[900]),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 1.5,
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Icon(
                  Icons.content_cut_outlined,
                  size: 40,
                ),
                SizedBox(height: 10),
                Text(
                  'Guadalupe Rodriguez',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[900]),
                ),
                Text(
                  'Estilista',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  '(831)-321-7654\n',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightGreen[900]),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 1.5,
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Icon(
                  Icons.car_repair_rounded,
                  size: 40,
                ),
                SizedBox(height: 10),
                Text(
                  'Jose Muñoz',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[900]),
                ),
                Text(
                  'Mecanico',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  '(831)-098-7654\n',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightGreen[900]),
                ),
              ],
            ),
          ),Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 1.5,
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Icon(
                  Icons.handyman_outlined,
                  size: 40,
                ),
                SizedBox(height: 10),
                Text(
                  'Manuel Quevedo',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[900]),
                ),
                Text(
                  'Ferretero',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  '(831)-788-5754\n',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightGreen[900]),
                ),
              ],
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 1.5,
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Icon(
                  Icons.content_cut_outlined,
                  size: 40,
                ),
                SizedBox(height: 10),
                Text(
                  'Eduaro Gutierrez',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[900]),
                ),
                Text(
                  'Barber',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  '(831)-098-7654\n',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightGreen[900]),
                ),
              ],
            ),
          ),
        ]),
  );
}
