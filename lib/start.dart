import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';



class inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xcc003049),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              /*padding improsao*/
              SizedBox(
                height: 115,
              ),
              // imagen
              Flexible(
                child: Image.asset(
                  'assets/b.png',
                  height: 350,
                ),
              ),

              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              /*padding improsao*/
              SizedBox(
                height: 15,
              ),

              Padding(
                padding: EdgeInsets.only(left: 30.0, right: 30.00),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Bienvenido a la experiencia de  ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 21,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'comprar en línea con BasketCase©',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 21,
                          color: Colors.white,
                        ),
                      ),

                      /*padding improsao*/
                      SizedBox(
                        height: 30,
                      ),
                      _bottonInicio()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _bottonInicio() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return RaisedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
          child: Text(
            '¡Comenzar!',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 10.0,
        color: Colors.amber,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => MyShop()));
        });
  });
}
