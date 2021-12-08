import 'package:flutter/material.dart';
import 'package:tienda/snack_detail.dart';



class SnackPage extends StatelessWidget {
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
                  _buildCard('Zambos Originales', '\L.20.3',
                      'assets/snacks/zambosO.png', false, true, context),
                  _buildCard('Cheetos Flamming', '\L.24.5',
                      'assets/snacks/cheeto2.png', false, false, context),
                  _buildCard('Takis Fuego', '\L.29.4',
                      'assets/snacks/takis1.png', false, false, context),
                  _buildCard('Ranchitas Frijolero', '\L.29.4',
                      'assets/snacks/ranchitasF.png', false, true, context),
                  _buildCard('Zambos Picantes', '\L.29.4',
                      'assets/snacks/zambosP.png', false, false, context),
                  _buildCard('Zambos Yuquitas', '\L.29.4',
                      'assets/snacks/zambosY.png', false, false, context),
                  _buildCard('Ranchitas Limón', '\L.29.4',
                      'assets/snacks/ranchitasL.png', false, false, context),
                  _buildCard('Ranchitas Guacamol', '\L.29.4',
                      'assets/snacks/ranchitasG.png', false, false, context),
                  _buildCard('Ranchitas Queso', '\L.29.4',
                      'assets/snacks/ranchitasQ.png', false, false, context),
                  _buildCard('Ranchitas Exitante', '\L.29.4',
                      'assets/snacks/ranchitasR.png', false, false, context),
                  _buildCard('Ranchita Extremo', '\L.29.4',
                      'assets/snacks/ranchitasT.png', false, false, context),
                  _buildCard('Caribas Ondulados', '\L.29.4',
                      'assets/snacks/caribasO.png', false, false, context),
                  _buildCard('Caribas Platano Verde', '\L.29.4',
                      'assets/snacks/caribasPV.png', false, false, context),
                  _buildCard('Caribas Sofrito', '\L.29.4',
                      'assets/snacks/caribasS.png', false, false, context),
                  _buildCard('Maní Limón y Chile', '\L.29.4',
                      'assets/snacks/maniLC.png', false, true, context),
                  _buildCard('Maní Salado', '\L.29.4', 'assets/snacks/maniS.png',
                      false, false, context),
                  _buildCard('Yummix Tropical', '\L.29.4',
                      'assets/snacks/yummixTV.png', false, false, context),
                  _buildCard('Yummix  Picoso', '\L.29.4',
                      'assets/snacks/yummixT.png', false, false, context),
                  _buildCard('Doritos Toasted Corn', '\L.29.4',
                      'assets/snacks/DoritosB.png', false, false, context),
                  _buildCard('Buen Nachos ', '\L.29.4',
                      'assets/snacks/buenQ.png', false, false, context),
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
        onDoubleTap: (){

          Icon(Icons.favorite, color: Color(0xbfFF0000));
        },
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SnackDetail(
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
