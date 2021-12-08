import 'package:flutter/material.dart';
import 'condimentos_detail.dart';

class CondimentosPage extends StatelessWidget {
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
                  _buildCard(
                      'Achiote',
                      '\L.11.90',
                      'assets/imgcondimentos/achiote.png',
                      false,
                      false,
                      context),
                  _buildCard('Adobo', '\L.50.90',
                      'assets/imgcondimentos/adobo.png', false, false, context),
                  _buildCard(
                      'Azafran',
                      '\L.13.90',
                      'assets/imgcondimentos/azafran.png',
                      false,
                      false,
                      context),
                  _buildCard('Chile Picante', '\L.13.90',
                      'assets/imgcondimentos/chile.png', false, false, context),
                  _buildCard('Clavo de Olor', '\L.13.90',
                      'assets/imgcondimentos/clavo.png', false, false, context),
                  _buildCard(
                      'Comino',
                      '\L.35.90',
                      'assets/imgcondimentos/comino.png',
                      false,
                      false,
                      context),
                  _buildCard(
                      'Consome de Pollo',
                      '\L.59.90',
                      'assets/imgcondimentos/consome.png',
                      false,
                      false,
                      context),
                  _buildCard(
                      'Cubitos',
                      '\L.14.90',
                      'assets/imgcondimentos/cubitos.png',
                      false,
                      false,
                      context),
                  _buildCard('Curry', '\L.10.90',
                      'assets/imgcondimentos/curry.png', false, false, context),
                  _buildCard(
                      'Empanizador',
                      '\L.56.90',
                      'assets/imgcondimentos/empanizador.png',
                      false,
                      false,
                      context),
                  _buildCard(
                      'Especias',
                      '\L.37.90',
                      'assets/imgcondimentos/especias.png',
                      false,
                      false,
                      context),
                  _buildCard(
                      'Frijoles',
                      '\L.25.90',
                      'assets/imgcondimentos/frijoles.png',
                      false,
                      false,
                      context),
                  _buildCard(
                      'Oregano',
                      '\L.48.90',
                      'assets/imgcondimentos/oregano.png',
                      false,
                      false,
                      context),
                  _buildCard('Pasta', '\L.10.90',
                      'assets/imgcondimentos/pasta.png', false, false, context),
                  _buildCard(
                      'Pimienta Negra',
                      '\L.11.90',
                      'assets/imgcondimentos/pimientanegra.png',
                      false,
                      false,
                      context),
                  _buildCard(
                      'Pimienta Roja',
                      '\L.49.90',
                      'assets/imgcondimentos/pimientaroja.png',
                      false,
                      false,
                      context),
                  _buildCard(
                      'Ajo en Polvo',
                      '\L.34.90',
                      'assets/imgcondimentos/polvoajo.png',
                      false,
                      false,
                      context),
                  _buildCard(
                      'Canela en Polvo',
                      '\L.9.90',
                      'assets/imgcondimentos/polvocanela.png',
                      false,
                      false,
                      context),
                  _buildCard('Salsa de Tomate', '\L.10.90',
                      'assets/imgcondimentos/salsa.png', false, false, context),
                  _buildCard(
                      'Salsa de Ajo',
                      '\L.48.90',
                      'assets/imgcondimentos/salsaajo.png',
                      false,
                      false,
                      context),
                  _buildCard(
                      'Salsa Inglesa',
                      '\L.36.90',
                      'assets/imgcondimentos/salsainglesa.png',
                      false,
                      false,
                      context),
                  _buildCard(
                      'Salsa de Soya',
                      '\L.49.90',
                      'assets/imgcondimentos/salsasoya.png',
                      false,
                      false,
                      context),
                  _buildCard(
                      'Sofrito',
                      '\L.9.90',
                      'assets/imgcondimentos/sofrito.png',
                      false,
                      false,
                      context),
                  _buildCard(
                      'Vainilla',
                      '\L.11.90',
                      'assets/imgcondimentos/vainilla.png',
                      false,
                      false,
                      context),
                  _buildCard(
                      'Vinagre',
                      '\L.21.90',
                      'assets/imgcondimentos/vinagre.png',
                      false,
                      false,
                      context),
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
              builder: (context) => CondimentosDetail(
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
