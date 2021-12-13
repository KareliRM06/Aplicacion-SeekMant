import 'package:aplication_seekmant/src/widget/back_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class CerrajerpoPage extends StatelessWidget {
  const CerrajerpoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 225,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image(
                      width: double.infinity,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/flagged/photo-1564767609342-620cb19b2357?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1073&q=80')),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, 1.3),
                        borderRadius: BorderRadius.circular(10)),
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Center(
                    child: Text(
                      "Cerrajeros",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        '10 lugares',
                        style: TextStyle(
                            color: Color.fromRGBO(51, 58, 77, 1.0),
                            fontWeight: FontWeight.w600,
                            fontSize: 17),
                      ),
                    ),
                    Column(
                      children: [cardCerrajero(), cardCerrajero2(), cardCerrajero3()],
                    ),
                    SizedBox( height: 50)                     
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}

Widget cardCerrajero() {
  return Container(
    margin: EdgeInsets.only(top: 15.0, right: 13.0, bottom: 0.0, left: 13.0),
    padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(210, 211, 215, 1.0),
          offset: Offset(0, 5),
          blurRadius: 10.0
        )
      ]
    ) ,
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image(
              width: 90.0,
              height: 90.0,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://f.rpp-noticias.io/2019/02/15/753300descarga-11jpg.jpg')),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 13, right: 13),
                child: Text(
                  'Jose Francisco Hinojosa',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
              SizedBox(height: 8),
              Container(
                margin: EdgeInsets.only(left: 13, right: 13),
                child: Text(
                  'Av.Rotaria #509 Colonia Franco \nZona Centro' ,
                  style: TextStyle(color: Colors.black54, fontSize: 15),
                ),
              ),
              SizedBox(height: 8),
              Container(
                margin: EdgeInsets.only(left: 13, right: 13),
                child: Text('(831)183-3573' ,
                  style: TextStyle(color: Colors.black54, fontSize: 15, fontWeight: FontWeight.bold),                
                ),                                
              ),
              
            ],
          ),
        )
      ],
    ),
  );
}


Widget cardCerrajero2() {
  return Container(
    margin: EdgeInsets.only(top: 15.0, right: 13.0, bottom: 0.0, left: 13.0),
    padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(210, 211, 215, 1.0),
          offset: Offset(0, 5),
          blurRadius: 10.0
        )
      ]
    ) ,
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image(
              width: 90.0,
              height: 90.0,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://scontent.fmex4-2.fna.fbcdn.net/v/t31.18172-8/325786_262684997083753_2245087_o.jpg?_nc_cat=104&ccb=1-5&_nc_sid=de6eea&_nc_eui2=AeFWNOviHJedpLkFgk7JdnDaXcZ7wRmsdOZdxnvBGax05qjgWRmZdesmidS0mh7JtFD0QzcgRMiRgd0X4rhKu8uA&_nc_ohc=K2jVQSjciR4AX_Xv89B&_nc_ht=scontent.fmex4-2.fna&oh=00_AT-1BWPCXjZpVCuzk56FhJNxyEVKZjAibKIBzi4X6pOUjQ&oe=61DDBF89')),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 13, right: 13),
                child: Text(
                  'Pedro Ruiz',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
              SizedBox(height: 8),
              Container(
                margin: EdgeInsets.only(left: 13, right: 13),
                child: Text(
                  'Calle Paniagua #610 \nColonia Anahuac 2' ,
                  style: TextStyle(color: Colors.black54, fontSize: 15),
                ),
              ),
              SizedBox(height: 8),
              Container(
                margin: EdgeInsets.only(left: 13, right: 13),
                child: Text('(831)096-0934' ,
                  style: TextStyle(color: Colors.black54, fontSize: 15, fontWeight: FontWeight.bold),                
                ),                                
              ),
              
            ],
          ),
        )
      ],
    ),
  );
}


Widget cardCerrajero3() {
  return Container(
    margin: EdgeInsets.only(top: 15.0, right: 13.0, bottom: 0.0, left: 13.0),
    padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(210, 211, 215, 1.0),
          offset: Offset(0, 5),
          blurRadius: 10.0
        )
      ]
    ) ,
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image(
              width: 90.0,
              height: 90.0,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://tecnofanatico.com/wp-content/uploads/2019/02/thispersondoesnotexist.com_-696x696.jpeg')),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 13, right: 13),
                child: Text(
                  'Cesar Galvan',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
              SizedBox(height: 8),
              Container(
                margin: EdgeInsets.only(left: 13, right: 13),
                child: Text(
                  'Obregon #800 \nColonia Zona Centro' ,
                  style: TextStyle(color: Colors.black54, fontSize: 15),
                ),
              ),
              SizedBox(height: 8),
              Container(
                margin: EdgeInsets.only(left: 13, right: 13),
                child: Text('(831)453-6542' ,
                  style: TextStyle(color: Colors.black54, fontSize: 15, fontWeight: FontWeight.bold),                
                ),                                
              ),
              
            ],
          ),
        )
      ],
    ),
  );
}
