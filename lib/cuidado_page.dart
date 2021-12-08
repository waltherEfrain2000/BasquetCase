import 'package:flutter/material.dart';

import 'cuidado_detail.dart';

class CuidadoPage extends StatelessWidget {
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
                  _buildCard('Shampoo Dove 12 Oz', '\L.112.00',
                      'assets/higiene/dove12.png', false, false, context),
                  _buildCard('Shampoo Hd&Sr', '\L.212.00',
                      'assets/higiene/hys21.png', false, false, context),
                  _buildCard(
                      'Acondicionador',
                      '\L.187.00',
                      'assets/higiene/pantene3mm.jpg',
                      false,
                      false,
                      context),
                  _buildCard('Gel  Ego 500 ml', '\L.98.80',
                      'assets/higiene/gelego.jpg', false, false, context),
                  _buildCard('Papel Higiénico Scott',
                      '\L.67.00', 'assets/higiene/scott4.jpg', false, false, context),
                  _buildCard('Papel Higiénico Scott ',
                      '\L.180.50', 'assets/higiene/scott12.jpg', false, false, context),
                  _buildCard('Old Spice Fresh 50 Gr', '\L.88.50',
                      'assets/higiene/olds50.png', false, false, context),
                  _buildCard('Axe Hombre 150 ml', '\L.83.00',
                      'assets/higiene/axe.jpg', false, false, context),
                  _buildCard('Desodorante Rexona', '\L.134.00',
                      'assets/higiene/rexonaw.jpg', false, false, context),
                  _buildCard('Nivea Invisible 150 ml',
                      '\L.97.00', 'assets/higiene/desnivea.jpg', false, false, context),
                  _buildCard('Pasta Dental Colgate', '\L.21.50',
                      'assets/higiene/colgate3.png', false, false, context),
                  _buildCard('Pasta 3D White ',
                      '\L.105.00', 'assets/higiene/oralb.jpg', false, false, context),
                  _buildCard('Cepillo Colgate 360°', '\L.143.90',
                      'assets/higiene/cepillo2p.jpg', false, false, context),
                  _buildCard('Cepillo Oral B ', '\L.107.00',
                      'assets/higiene/ceporalb.jpg', false, false, context),
                  _buildCard('Enjuague Bucal ', '\L.145.00',
                      'assets/higiene/listerine.jpg', false, false, context),
                  _buildCard('Oral B Pack 50 ml', '\L.132.00',
                      'assets/higiene/oralbh.jpg', false, false, context),
                  _buildCard('Prestobarba UGrip3', '\L.116.00',
                      'assets/higiene/presto34.jpg', false, false, context),
                  _buildCard('Prestobarba 3 Mujer ', '\L.128.70',
                      'assets/higiene/prestom34.jpg', false, false, context),
                  _buildCard('Jabón Protex 110', '\L.50.00',
                      'assets/higiene/protex3.jpg', false, false, context),
                  _buildCard('Jabón Dove Original', '\L.130.00',
                      'assets/higiene/doveo6.jpg', false, false, context),
                  _buildCard('Jabón Irish Spring ', '\L.28.00',
                      'assets/higiene/irish.jpg', false, false, context),
                  _buildCard('Crema Corporal Nivea ', '\L.155.00',
                      'assets/higiene/cnivea.jpg', false, false, context),
                  _buildCard('Crema Corporal Dove', '\L.265.00',
                      'assets/higiene/cdove.jpg', false, false, context),
                  _buildCard('Talco Odorit Original', '\L.43.50',
                      'assets/higiene/talco.jpg', false, false, context),
                  _buildCard('Vaselina Nutrine ', '\L.47.00',
                      'assets/higiene/vaselina.jpg', false, false, context),
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
              builder: (context) => CuidadoDetail(
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
