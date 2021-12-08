import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tienda/panaderia_detail.dart';


class PanaderiaPage extends StatelessWidget {
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
                  //pan to tan dulce
                  _buildCard('Bagette', '\L.20.35', 'assets/panaderia/bagette.png', false,
                      false, context),
                  _buildCard('Croissant', '\L.20.0', 'assets/panaderia/croissants.png',
                      false, false, context),
                  _buildCard('Chessecake', '\L.55.5', 'assets/panaderia/cheseecake.png',
                      false, false, context),
                  _buildCard('Galletas', '\L.5.5', 'assets/panaderia/galletas.png', false,
                      false, context),
                  _buildCard('Galletas con Nuez', '\L.8.0',
                      'assets/panaderia/galletas_nuez.png', false, false, context),
                  _buildCard('Pan Blanco', '\L.31.0', 'assets/panaderia/pan_blanco.png',
                      false, false, context),
                  _buildCard('Tarta de chocolate', '\L.70.0',
                      'assets/panaderia/tarta_de_chocolate.png', false, false, context),
                  _buildCard('Pan de banano', '\L.35.2',
                      'assets/panaderia/pan_banano.png', false, false, context),
                  _buildCard('Pan de coco', '\L.40.5', 'assets/panaderia/pan_coco.png',
                      false, false, context),
                  _buildCard('Pan dulce', '\L.10.3', 'assets/panaderia/pan_dulce.png',
                      false, false, context),
                  _buildCard('Pan chino', '\L.25.1', 'assets/panaderia/pan_chino.png',
                      false, false, context),

                  //pan dulce y pasteles
                  _buildCard('Chessecake', '\L.55.5', 'assets/panaderia/cheseecake.png',
                      false, false, context),
                  _buildCard('Pie de manzana', '\L.55.3', 'assets/panaderia/pay.png',
                      false, false, context),
                  _buildCard('Rol de canela', '\L.25.0',
                      'assets/panaderia/roles_canela.png', false, false, context),
                  _buildCard('Mil Hojas', '\L.35.5', 'assets/panaderia/milhojas.png',
                      false, false, context),
                  _buildCard('Cupcake', '\L.15.5', 'assets/panaderia/cupcake.png', false,
                      false, context),
                  _buildCard('Dona', '\L.15.0', 'assets/panaderia/donas.png', false,
                      false, context),
                  //pasteles
                  _buildCard('Pastel tres leches', '\L.80.0',
                      'assets/panaderia/tres_leches.png', false, false, context),
                  _buildCard('Tiramisú', '\L.65.8', 'assets/panaderia/tiramisu.png',
                      false, false, context),
                  _buildCard('Pastel de zanahoria', '\L.60.4',
                      'assets/panaderia/pastel_zanahoria.png', false, false, context),
                  _buildCard('Pastel Arcoíris', '\L.65.4',
                      'assets/panaderia/pastel_arcoiris.png', false, false, context),
                  _buildCard('Pastel para niños', '\L.125.5',
                      'assets/panaderia/pastel_barca.png', false, false, context),
                  _buildCard('Pastel formal', '\L.159.99',
                      'assets/panaderia/pastel_rosa.png', false, false, context),

                  //veganos
                  _buildCard('Galletas veganas', '\L.18.35',
                      'assets/panaderia/galletas_veganas.png', false, false, context),
                  _buildCard('Pan dulce vegano', '\L.60.7',
                      'assets/panaderia/pan_vegano.png', false, false, context),
                  _buildCard('Pan integral', '\L.40.5',
                      'assets/panaderia/pan_integral.png', false, false, context),
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
              builder: (context) => PanaderiaDetail(
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
