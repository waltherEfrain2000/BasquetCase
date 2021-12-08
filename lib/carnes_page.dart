import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'carnes_detail.dart';


class CarnesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  //res
                  _buildCard('Bistec de res LB', '\L.102.00',
                      'assets/carnes/bistecRes.png', false, false, context),
                  _buildCard('Carne asar de res LB', '\L.95.50',
                      'assets/carnes/carneAsarRes.png', false, false, context),
                  _buildCard('Carne asar sazonada', '\L.102.50',
                      'assets/carnes/carneAsarSazonada.jpg', false, false, context),
                  _buildCard('Carne molida res ', '\L.52.50',
                      'assets/carnes/carneMolidaRes.png', false, false, context),
                  _buildCard(
                      'Carne molida res Sp',
                      '\L.83.50',
                      'assets/carnes/carneMolidaResEspecial.png',
                      false,
                      false,
                      context),
                  _buildCard('Carne res Sp LB', '\L.102.50',
                      'assets/carnes/carneResAsarEspecial.png', false, false, context),
                  _buildCard('Corazon de res LB', '\L.21.50',
                      'assets/carnes/corazonRes.png', false, false, context),
                  _buildCard('Costilla de res LB', '\L.67.50',
                      'assets/carnes/costillaRes.png', false, false, context),
                  _buildCard('Higado de res LB', '\L.34.90',
                      'assets/carnes/higadoRes.png', false, false, context),
                  _buildCard('Lengua de res LB', '\L.87.50',
                      'assets/carnes/lenguaRes.png', false, false, context),

                  //cerdo
                  _buildCard('Carne asar cerdo LB', '\L.64.5',
                      'assets/carnes/carneAsarCerdo.webp', false, false, context),
                  _buildCard(
                      'Carne asar cerdo Sp ',
                      '\L.33.05',
                      'assets/carnes/carneAsarCerdoEspecial.png',
                      false,
                      false,
                      context),
                  _buildCard('Carne chicharron LB', '\L.52.50',
                      'assets/carnes/carneChicharron.png', false, false, context),
                  _buildCard('Chorizo casero LB', '\L.53.50',
                      'assets/carnes/chorizoCasero.png', false, false, context),
                  _buildCard('Chorizo criollo LB', '\L.53.50',
                      'assets/carnes/chorizoCriollo.png', false, false, context),
                  _buildCard('Chuleta de cerdo LB', '\L.52.50',
                      'assets/carnes/chuletaCerdo.png', false, false, context),
                  //pasteles
                  _buildCard('Costilla de cerdo LB', '\L.38.50',
                      'assets/carnes/costillaCerdo.png', false, false, context),
                  _buildCard('Lomo de cerdo LB', '\L.56.90',
                      'assets/carnes/lomoCerdo.png', false, false, context),
                  _buildCard('Patas de cerdo LB', '\L.39.90',
                      'assets/carnes/patasCerdo.png', false, false, context),

                  //pollo
                  _buildCard('Muslo de pollo LB', '\L.54.50',
                      'assets/carnes/musloPollo.png', false, false, context),
                  _buildCard('Pechuga deshuesada ', '\L.85.00',
                      'assets/carnes/pechugaPollo.png', false, false, context),
                  _buildCard('Pechuga con hueso', '\L.34.50',
                      'assets/carnes/pechugaPolloHueso.png', false, false, context),
                ],
              )),
          SizedBox(
            height: 15.0,
          )
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavorite, context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 3.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CarnesDetail(
                  assetPath: imgPath, precio: price, nombre: name)));
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3.0,
                    blurRadius: 5.0)
              ],
              color: Colors.white),
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      isFavorite ? Icon(Icons.favorite, color: Color(0xbfFF0000)) : Icon(Icons.favorite_border,
                          color: Color(0xbfFF0000))
                    ],
                  )),
              Hero(
                tag: imgPath,
                child: Container(
                    height: 75.0,
                    width: 75.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imgPath), fit: BoxFit.contain))),
              ),
              SizedBox(
                height: 12.0,
              ),
              Text(price,
                  style: TextStyle(
                      color: Color(0xbf176c82),
                      fontFamily: 'Varela',
                      fontSize: 14.0)),
              Text(name,
                  style: TextStyle(
                      color: Color(0xFF575E67),
                      fontFamily: 'Varela',
                      fontSize: 14.0)),
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    color: Color(0xFFEBEBEB),
                    height: 1.0,
                  )),
              Padding(
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (!added) ...[
                      Icon(Icons.shopping_basket,
                          color: Color(0xbf176c82), size: 12.0),
                      Text(
                        'Agregar al carrito',
                        style: TextStyle(
                            fontFamily: 'Valera',
                            color: Color(0xbf176c82),
                            fontSize: 12.0),
                      )
                    ]
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
