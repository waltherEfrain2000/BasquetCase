import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'bottom_bar.dart';
import 'main.dart';

class ComprarAhora extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final _nombreCompletoController =TextEditingController();
    final _direccionController=TextEditingController();
    final _tellphoneController=TextEditingController();
    final TextStyle  letras = TextStyle(color: Colors.white);

    var nombre,barrio, numero;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.home, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Basket Case',
            style: TextStyle(
                fontFamily: 'varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 100.0),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.00),
            child: Center(
              child: Text('Ingrese su nombre Completo',

                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xe6003049))),
            ),
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: EdgeInsets.only(left: 30.0, right: 30.00),
            child: Center(
              child: TextField(
                controller: _nombreCompletoController,
                textInputAction: TextInputAction.next,

                decoration: InputDecoration(
                  hintText: "Ejem: Pablo Emilio Escobar",
                ),
              onChanged: (texto){
                  nombre=texto;
              },
    style: TextStyle(

                    fontFamily: 'Varela',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xbf176c82)),
              ),
            ),
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text('Ingrese Su Direccion 📫',
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xe6003049))),
            ),
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: EdgeInsets.only(left: 30.0, right: 30.00),
            child: Center(
              child: TextField(
                controller: _direccionController,
                decoration: InputDecoration(
                  hintText: "Ejem: Barrio Guamilito Tres cuadras al Sur",
                ),
                textInputAction: TextInputAction.next,
                style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xbf176c82),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Text('Ingrese su Numero Celular 📲 ',
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xe6003049))),
            ),
          ),
          SizedBox(height: 5.0),
          Padding(
            padding: EdgeInsets.only(left: 30.0, right: 30.00),
            child: Center(
              child: TextField(
                controller: _tellphoneController,
                decoration: InputDecoration(
                  hintText: "Ejem: 98563625",
                ),
                textInputAction: TextInputAction.next,
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xbf176c82)),
              ),
            ),
          ),



          SizedBox(height: 20.0),

          SizedBox(height: 20.0),
          Center(
              child: Container(
                  width: MediaQuery.of(context).size.width - 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xe6003049)),
                  child: Center(
                      child: Text(
                    'Pagar Online 💳📱',
                    style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )))),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                    width: MediaQuery.of(context).size.width - 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Color(0xe6003049)),
                    child: InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context){

                              return AlertDialog(

                                title: Text(" Su pedido se ha regitrado satisfactoriamente! \n",textAlign: TextAlign.center ,style: letras),
                                content: Text("Nombre:  ${_nombreCompletoController.text} Direccion: ${_direccionController.text} \n Productos que lleva: ${ArregloCarrito.toString()}" ,textAlign: TextAlign.center ,style: letras),
                                actions: <Widget>[
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text("Cerrar"))
                                ],


                                backgroundColor: Color(0xe6003049),
                              );

                            },
                        );

                      },
                      child: Center(
                        child: Text(
                          'Pagar al recibir envio 💸 ',
                          style: TextStyle(
                            fontFamily: 'Varela',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )),
              )),
        ],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
