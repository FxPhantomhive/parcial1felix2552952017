import 'package:flutter/material.dart';

void main() {
  runApp(Parcial1());
}

class Parcial1 extends StatefulWidget {
  const Parcial1({Key? key}) : super(key: key);

  @override
  State<Parcial1> createState() => _Parcial1State();
}

class _Parcial1State extends State<Parcial1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Parcial 1 - 25-5295-2017",
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.engineering,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
          title: Text("Parcial 1 - 25-5295-2017"),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/fondo.jpg"), fit: BoxFit.cover)),
          //image: NetworkImage(
          //    "https://w0.peakpx.com/wallpaper/652/667/HD-wallpaper-death-star-ii-constuction-dark-darth-vader-death-star-star-wars.jpg"),
          // fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  imagenSup(),
                  SizedBox(),
                  Cabecera(),
                  SizedBox(),
                  Username("Username"),
                  Nombre("Nombre"),
                  Apellido("Apellidos"),
                  Direccion("Direccion"),
                  Password("Password"),
                  RePassword("Re Password"),
                  Telefono("Telefono"),
                  Correo("Correo"),
                  Botones(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget Cabecera() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    child: Center(
        child: Row(
      children: [
        Icon(
          Icons.engineering,
          color: Colors.white,
        ),
        Text(
          "Formulario de Registro",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ],
    )),
  );
}

Widget imagenSup() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Center(
      child: Image(
        image: AssetImage("images/gnar.jpg"),
        height: 150,
        width: 150,
      ),
    ),
  );
}

Widget Username(String dato) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    child: TextField(
      decoration: InputDecoration(
        hintText: dato,
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(Icons.account_box),
      ),
    ),
  );
}

Widget Nombre(String dato) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    child: TextField(
      decoration: InputDecoration(
        hintText: dato,
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(Icons.person),
      ),
    ),
  );
}

Widget Apellido(String dato) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    child: TextField(
      decoration: InputDecoration(
        hintText: dato,
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(Icons.person),
      ),
    ),
  );
}

Widget Direccion(String dato) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    child: TextField(
      decoration: InputDecoration(
        hintText: dato,
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(Icons.location_city),
      ),
      keyboardType: TextInputType.multiline,
      maxLines: null,
    ),
  );
}

Widget Password(String dato) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    child: TextField(
      decoration: InputDecoration(
        hintText: dato,
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(Icons.password),
      ),
      obscureText: true,
      enableSuggestions: false,
      autocorrect: false,
    ),
  );
}

Widget RePassword(String dato) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    child: TextField(
      decoration: InputDecoration(
        hintText: dato,
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(Icons.password),
      ),
      obscureText: true,
      enableSuggestions: false,
      autocorrect: false,
    ),
  );
}

Widget Telefono(String dato) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    child: TextField(
      decoration: InputDecoration(
        hintText: dato,
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(Icons.phone),
      ),
    ),
  );
}

Widget Correo(String dato) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    child: TextField(
      decoration: InputDecoration(
        hintText: dato,
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(Icons.mail),
      ),
      keyboardType: TextInputType.multiline,
      maxLines: null,
    ),
  );
}

Widget Botones() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    child: Column(
      children: [
        FlatButton(
          onPressed: () {},
          child: Text("Guardar"),
          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
          color: Colors.blueAccent,
        ),
        FlatButton(
          onPressed: () {},
          child: Text("Cancelar"),
          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
          color: Colors.greenAccent,
        ),
      ],
    ),
  );
}
