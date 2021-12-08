import 'package:flutter/material.dart';
import 'package:tienda/fruta_verdura_detail.dart';

class FrutasPage extends StatelessWidget {
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
                  _buildCard('Aguacate Mex c/u', '\L 76.90','assets/frutas_verduras/aguacate1.png', false, false, context),
                  _buildCard('Banano Maduro c/u', '\L 3.90','assets/frutas_verduras/bananoMaduro2.png', false, false, context),
                  _buildCard('BananoVerde c/u', '\L 2.90','assets/frutas_verduras/bananoVerde2.png', false, false, context),
                  _buildCard('Cebolla Lb', '\L 14.90','assets/frutas_verduras/cebolla1.png', false, false, context),
                  _buildCard('Coco c/u', '\L 18.90','assets/frutas_verduras/coco.png', false, false, context),
                  _buildCard('Chile Colores c/u', '\L 10.90','assets/frutas_verduras/chileColores1.png', false, false, context),
                  _buildCard('Chile Jalapeño Lb', '\L 12.90','assets/frutas_verduras/chileJalapeño1.png', false, false, context),
                  _buildCard('Durazno ', '\L 23.90','assets/frutas_verduras/durazno1.png', false, false, context),
                  _buildCard('Elote(bandeja)', '\L 31.90','assets/frutas_verduras/elote2.png', false, false, context),
                  _buildCard('Fresas Lb', '\L 86.90','assets/frutas_verduras/fresas1.png', false, false, context),
                  _buildCard('Guayaba c/u', '\L 12.90','assets/frutas_verduras/guayaba1.png', false, false, context),
                  _buildCard('Jilote(bandeja)', '\L 21.90','assets/frutas_verduras/jilote2.png', false, false, context),
                  _buildCard('Kiwi c/u', '\L 23.90','assets/frutas_verduras/kiwi2.png', false, false, context),
                  _buildCard('Lechuga c/u', '\L 16.90','assets/frutas_verduras/lechuga1.png', false, false, context),
                  _buildCard('Limón Lb', '\L 15.90','assets/frutas_verduras/limon1.png', false, false, context),
                  _buildCard('Mango c/u', '\L 17.90','assets/frutas_verduras/mango1.png', false, false, context),
                  _buildCard('Manzana Amarilla Lb', '\L 32.90','assets/frutas_verduras/manzanaAmarilla1.png', false, false, context),
                  _buildCard('Manzana Roja c/u', '\L 15.90','assets/frutas_verduras/manzanaRoja1.png', false, false, context),
                  _buildCard('Manzana Verde Lb', '\L 23.90','assets/frutas_verduras/manzanaVerde1.png', false, false, context),
                  _buildCard('Melón c/u', '\L 22.90','assets/frutas_verduras/melon1.png', false, false, context),
                  _buildCard('Papas Lb', '\L 7.90','assets/frutas_verduras/papa1.png', false, false, context),
                  _buildCard('Pepino c/u', '\L 17.90','assets/frutas_verduras/pepino2.png', false, false, context),
                  _buildCard('Pera c/u', '\L 17.90','assets/frutas_verduras/pera2.png', false, false, context),
                  _buildCard('Perejil(mazo)', '\L 4.90','assets/frutas_verduras/perejil2.png', false, false, context),
                  _buildCard('Piña c/u', '\L 40.90','assets/frutas_verduras/piña1.png', false, false, context),
                  _buildCard('Platano c/u', '\L 7.90','assets/frutas_verduras/platano1.png', false, false, context),
                  _buildCard('Rabanos(mazo)', '\L 6.90','assets/frutas_verduras/rabano1.png', false, false, context),
                  _buildCard('Remolacha Lb', '\L 5.90','assets/frutas_verduras/remolacha2.png', false, false, context),
                  _buildCard('Repollo Lb', '\L 18.90','assets/frutas_verduras/repollo1.png', false, false, context),
                  _buildCard('Sandia c/u', '\L 42.90','assets/frutas_verduras/sandia2.png', false, false, context),
                  _buildCard('Tomate Lb', '\L 14.90','assets/frutas_verduras/tomate1.png', false, false, context),
                  _buildCard('Toronja Lb', '\L 68.90','assets/frutas_verduras/toronja2.png', false, false, context),
                  _buildCard('Uva Morada Lb', '\L 66.90','assets/frutas_verduras/uvaMorada1.png', false, false, context),
                  _buildCard('Uva Roja Lb', '\L 88.90','assets/frutas_verduras/uvaRoja2.png', false, false, context),
                  _buildCard('Uva Verde Lb', '\L 93.90','assets/frutas_verduras/uvaVerde2.png', false, false, context),
                  _buildCard('Yuca c/u', '\L 7.90','assets/frutas_verduras/yuca1.png', false, false, context),
                  _buildCard('Zanahoria Lb', '\L 4.90','assets/frutas_verduras/zanahoria2.png', false, false, context),

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
              builder: (context) => LacteoDetail(
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
