import 'package:flutter/material.dart';
import 'package:tienda/lacteo_detail.dart';

class LacteosPage extends StatelessWidget {
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
                  _buildCard('Bebida de Almendra', '\L.76.90','assets/lacteos/bebidaDeAlmendra.png', false, false, context),
                  _buildCard('Bebida Delisoy', '\L.76.90','assets/lacteos/bebidaDelisoy.png', false, false, context),
                  _buildCard('Bebida Uth', '\L.89.90','assets/lacteos/bebidaUth.png', false, false, context),
                  _buildCard('Dip de Queso', '\L.48.90','assets/lacteos/dipDeQueso.png', false, false, context),
                  _buildCard('Leche Deslactosada', '\L.40.90','assets/lacteos/lecheDeslactosada.png', false, false, context),
                  _buildCard('Leche en Polvo', '\L.238.90','assets/lacteos/lecheEnPolvo.png', false, false, context),
                  _buildCard('Leche Descremada', '\L.40.90','assets/lacteos/lecheSemiDescremada.png', false, false, context),
                  _buildCard('Malteada Sula', '\L.17.90','assets/lacteos/malteadaSula.png', false, false, context),
                  _buildCard('Mantequilla Amarilla', '\L.117.90','assets/lacteos/mantequillaAmarilla.png', false, false, context),
                  _buildCard('Mantequilla Crema', '\L.57.90','assets/lacteos/mantequillaCrema.png', false, false, context),
                  _buildCard('Mantequilla Don Milo', '\L.22.90','assets/lacteos/mantequillaDonMilo.png', false, false, context),
                  _buildCard('Mantequilla Essential', '\L.65.90','assets/lacteos/margainaEssential.png', false, false, context),
                  _buildCard('Mantequilla Mazola', '\L.28.90','assets/lacteos/margarinaMazola.png', false, false, context),
                  _buildCard('Mantequilla Parkay', '\L.192.90','assets/lacteos/margarinaParkay.png', false, false, context),
                  _buildCard('Queso Americano', '\L.132.90','assets/lacteos/quesoAmericano.png', false, false, context),
                  _buildCard('Queso Cheddar', '\L.94.90','assets/lacteos/quesoCheddar.png', false, false, context),
                  _buildCard('Queso Colby', '\L.89.90','assets/lacteos/quesoColby.png', false, false, context),
                  _buildCard('Queso Crema', '\L.74.90','assets/lacteos/quesoCrema.png', false, false, context),
                  _buildCard('Queso El Boquerón', '\L.57.90','assets/lacteos/quesoElBoqueron.png', false, false, context),
                  _buildCard('Queso Feta', '\L.96.90','assets/lacteos/quesoFeta.png', false, false, context),
                  _buildCard('Queso Mozzarella', '\L.70.90','assets/lacteos/quesoMozzarella.png', false, false, context),
                  _buildCard('Queso Muenster', '\L.84.90','assets/lacteos/quesoMuenster.png', false, false, context),
                  _buildCard('Queso Parmesano', '\L.119.90','assets/lacteos/quesoParmesano.png', false, false, context),
                  _buildCard('Queso Pepper Jack', '\L.89.90','assets/lacteos/quesoPepperJack.png', false, false, context),
                  _buildCard('Queso Procesado', '\L.89.90','assets/lacteos/quesoProcesado.png', false, false, context),
                  _buildCard('Queso White Hall', '\L.41.90','assets/lacteos/quesoWhiteHall.png', false, false, context),



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
