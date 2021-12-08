import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottom_bar.dart';
import 'buyAhora.dart';
import 'main.dart';
final TextStyle  letras = TextStyle(color: Colors.white);
class SnackDetail extends StatelessWidget {
  final assetPath, precio, nombre ;


  final TextStyle  letras = TextStyle(color: Colors.white);
  final TextStyle  letras1 = TextStyle(color: Color(0xFF545D68));
  SnackDetail({this.assetPath, this.precio,this.nombre });
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
        title: Text('Basket Case',
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
              height:30.0
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.00),
            child: Center (child:Text(
                'Categoría:Snacks',
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 30.0,

                    fontWeight: FontWeight.bold,
                    color: Color(0xe6003049))
            ),
            ),
          ),
          SizedBox(height:30.0),
          Hero(
              tag:assetPath ,
              child: Image.asset(assetPath,
                height: 225.0,
                width: 225.0,
                fit: BoxFit.contain,
              )),
          SizedBox(height: 20.0),
          Center(
            child: Text(precio,
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xbf176c82))),
          ),
          SizedBox(height: 10.0),
          Center(
            child: Text(nombre,
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
                      color: Color(0xe6003049)
                  ),
                  child:InkWell(
                      onTap:  (){

                        showDialog(
                          context: context,
                          builder: (context){

                            return AlertDialog(

                              title: Text(" Producto Agregado Correctamente! \n",textAlign: TextAlign.center ,style: letras1),
                              content: Text("" ,textAlign: TextAlign.center ,style: letras1),
                              actions: <Widget>[

                                _bottonInicio()
                              ],


                              backgroundColor: Color(0xe6f9dc4b),
                            );

                          },
                        );
                        ArregloCarrito.add(nombre);
                        ArregloCarritoPrecio.add(precio);
                      },
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

              ),
              ),

          ),

         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Center(
               child: Container(
                   width: MediaQuery.of(context).size.width - 50.0,
                   height: 50.0,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(25.0),
                       color: Color(0xe6003049)
                   ),
                   child:InkWell(
                        onTap:  (){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ComprarAhora()));
                        },

                       child: Center(
                         child:Text('Comprar Ahora 💸 💳',
                           style: TextStyle(
                             fontFamily: 'Varela',
                             fontSize: 14.0,
                             fontWeight: FontWeight.bold,
                             color: Colors.white,

                           ),
                         ),
                       ),

                   )

                   ),


               )
           ),

        ],
      ),

      floatingActionButton: FloatingActionButton(onPressed: () {
        showDialog(
          context: context,
          builder: (context){

            return AlertDialog(

              title: Text(" Lista de Productos! \n",textAlign: TextAlign.center ,style: letras),


              content: Text(   "Nombre de productos que lleva :${ArregloCarrito.toString()}" ,textAlign: TextAlign.center ,style: letras),
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
        backgroundColor: Color(0xbf176c82),
        child: const Icon(Icons.store_mall_directory_sharp ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );

  }
}
Widget _bottonInicio() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return RaisedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
          child: Text(
            'Continuar',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
                color: Colors.white,
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 10.0,
        color: Color(0xe6003049),
        onPressed: () {
          Navigator.of(context)
            .pop();
        });
  });
}


