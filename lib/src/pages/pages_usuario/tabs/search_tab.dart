import 'package:aplication_seekmant/src/pages/pages_usuario/cerrajero_page.dart';
import 'package:flutter/material.dart';

class SearchTab extends StatefulWidget {
  SearchTab({Key? key}) : super(key: key);

  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
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
        body: Column(children: [Expanded(
    child: GridView.count(
        padding: EdgeInsets.only(top: 10, left: 20, right: 20),
        mainAxisSpacing: 10,
        crossAxisSpacing: 20,
        crossAxisCount: 2,
        primary: false,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CerrajerpoPage(),
              ));
              },
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 1.5,
              margin: EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.vpn_key,
                    size: 50,
                    color: Colors.blueGrey[800],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Cerrajero',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[900]),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 1.5,
              margin: EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.print,
                    size: 50,
                    color: Colors.blueGrey[800],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Imprenta',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[900]),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 1.5,
              margin: EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.content_cut_outlined,
                    size: 50,
                    color: Colors.blueGrey[800],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Estilista / Baber',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[900]),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 1.5,
              margin: EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.car_repair_rounded,
                    size: 50,
                    color: Colors.blueGrey[800],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Mecanico',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[900]),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 1.5,
              margin: EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.handyman_outlined,
                    size: 50,
                    color: Colors.blueGrey[800],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Ferreteria',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[900]),
                  ),
                ],
              ),
            ),
          ),
        ]),
  )]));
  }
}

