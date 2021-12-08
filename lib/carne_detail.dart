

import 'dart:io';

import 'package:flutter/material.dart';

import 'bottom_bar.dart';

class CarneDetail extends StatelessWidget{
  final assetPath, cookiPrice, cookieName;

  CarneDetail({this.assetPath, this.cookiPrice,this.cookieName});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.home, color: Color(0xFF545D68)),
          onPressed: () { Navigator.of(context).pop(); } ,
        ),
        title: Text('Elije',
            style: TextStyle(
                fontFamily: 'varela', fontSize: 20.0, color:Color(0xFF545D68))
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {  } ,
          ),
        ],
      ),

      body: ListView(

        children: [
          SizedBox(
              height:15.0
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
                'Maseca',
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 42.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF17532))
            ),

          ),
          SizedBox(height:15.0),
          Hero(
              tag:assetPath ,
              child: Image.asset(assetPath,
                height: 150.0,
                width: 100.0,
                fit: BoxFit.contain,
              )),
          SizedBox(height: 20.0),
          Center(
            child: Text(cookiPrice,
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF17532))),
          ),
          SizedBox(height: 10.0),
          Center(
            child: Text(cookieName,
                style: TextStyle(
                    color: Color(0xFF575E67),
                    fontFamily: 'Varela',
                    fontSize: 24.0)),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              child: Text('los mejores productos a los mejores precios',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 16.0,
                      color: Color(0xFFB4B8B9))
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
              child: Container(
                  width: MediaQuery.of(context).size.width - 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xFFF17532)
                  ),
                  child: Center(
                      child: Text('Agregar al carrito',
                        style: TextStyle(
                            fontFamily: 'Varela',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      )
                  )

              )
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(onPressed: () {  },
        backgroundColor: Color(0xFF17532),
        child: const Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );

  }

}