import 'package:flutter/material.dart';
import 'main.dart';

class login_page extends StatefulWidget {
  static String id = 'login_page';
  @override
  loginState createState() => loginState();
}

class loginState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color(0xbf176c82),
        body: Center(
          child: SingleChildScrollView(
            child:Column(
            children: [
              Padding(padding: EdgeInsets.all(50)),
              Image.asset(
                'assets/b.png',
                height: 200.0,
              ),
              SizedBox(
                height: 15.0,
              ),
              _userTextField(),
              SizedBox(
                height: 20.0,
              ),
              _passwordTextField(),
              SizedBox(
                height: 20.0,
              ),
              _buttonLogin(),
            ],
          ),),

        ),
      ),
    );
  }

  Widget _userTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                icon: Icon(
                  Icons.email,
                  color: Color(0xFFEFEFEF),
                ),
                hintText: 'Ejemplo@correo.com',
                hintStyle: TextStyle(fontSize: 12.0, color: Colors.white),
                focusColor: Colors.white,
                focusedBorder: new UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                labelText: 'Correo',
                labelStyle: TextStyle(fontSize: 15.0, color: Colors.white)),
            onChanged: (Value) {}),
      );
    });
  }

  Widget _passwordTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
            keyboardType: TextInputType.emailAddress,
            obscureText: true,
            decoration: InputDecoration(
                icon: Icon(Icons.lock, color: Color(0xFFEFEFEF)),
                hintText: 'Contraseña',
                hintStyle: TextStyle(fontSize: 12.0, color: Colors.white),
                focusColor: Colors.white,
                focusedBorder: new UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                labelText: 'Contraseña',
                labelStyle: TextStyle(fontSize: 15.0, color: Colors.white)),
            onChanged: (Value) {}),
      );
    });
  }

  Widget _buttonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.white, shadowColor: Colors.black45),
        onPressed: () {
          showDialog(
            context: (context),
            builder: (context) {
              return AlertDialog(
                title: Text('Ha iniciado correctamente la sesión'),
                actions: <Widget>[
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => MyShop()));
                      },
                      child: Text("Aceptar"))
                ],
              );
            },
          );
        },
        child: Text(
          'Iniciar Sesión',
          style: TextStyle(color: Color(0xff003049)),
        ),
      );
    });
  }
}
