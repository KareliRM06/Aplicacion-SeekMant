import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:aplication_seekmant/src/pages/pages_usuario/tabs/components/body.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          child: Stack(
            children: <Widget>[
              ClipPath(
                clipper: CustomShape(),
                child: Container(
                  height: 190,
                  color: Color.fromRGBO(133, 214, 121, 1.0),
                ),
              ),
              //Foto
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsetsDirectional.only(top: 55, bottom: 12),
                      height: 140,
                      width: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 5.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/Foto.jpg"),
                        ),
                      ),
                    ),
                    //Nombre debajo de la foto
                    Text(
                      'Maria Fernanda Garza',
                      style: TextStyle(fontSize: 18, color: Colors.black87),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'mariafer.garza@hotmail.com',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF8492A2),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.phone_android,
                            color: Colors.blueGrey[800],
                          ),
                          SizedBox(),
                          Text(
                            '(831) 116-6573',
                            style: TextStyle(
                                fontSize: 17.5, color: Colors.grey[850]),
                          ),
                        ],
                      ),
                    ),
                    //Opciones
                    SizedBox(height: 60),
                    _opcionAcercaDe(),
                    SizedBox(height: 60),
                    _opcionCerrarSesion(),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width / 2, height, width, height - 100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

Widget _opcionAcercaDe() {
  return InkWell(
    splashColor: Colors.white,
    onTap: () {},
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5.0),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.error_outline,
            color: Colors.grey[600],
          ),
          SizedBox(),
          Text(
            '   Acerca de',
            style: TextStyle(fontSize: 17.5, color: Colors.grey[600]),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Colors.black87,
          ),
        ],
      ),
    ),
  );
}

Widget _opcionCerrarSesion() {
  return InkWell(
    splashColor: Colors.white,
    onTap: () {},
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.logout,
            color: Colors.red[400],
          ),
          SizedBox(),
          Text(
            '   Cerrar sesión',
            style: TextStyle(fontSize: 17.5, color: Colors.red[400]),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Colors.red[400],
          ),
        ],
      ),
    ),
  );
}