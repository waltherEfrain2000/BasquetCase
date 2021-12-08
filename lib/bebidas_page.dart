import 'package:flutter/material.dart';

import 'bebidas_detail.dart';






class  BebidasPage extends StatelessWidget{
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
                height: MediaQuery.of(context).size.height- 50.0,

                child: GridView.count(
                  crossAxisCount:2,
                  primary: false,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 15.0,
                  childAspectRatio: 0.8,

                  children: <Widget>[
                    _buildCard('Seven Up cherry', '\L.15.3', 'assets/imgbebidas/7upcherry1.jpg', false, false, context),
                    _buildCard('Adrenalina lata', '\L.50.44', 'assets/imgbebidas/adrenalina1.jpg', false, false, context),
                    _buildCard('Aloe vera Fresa', '\L.44.4', 'assets/imgbebidas/aloefresa1.jpg', false, false, context),
                    _buildCard('Caprisun caja 24U', '\L.250.3', 'assets/imgbebidas/caprisun1.jpg', false, false, context),
                    _buildCard('Del valle 2lt Naranja', '\L.25.5', 'assets/imgbebidas/delvale2ltnaranja.jpg', false, false, context),
                    _buildCard('Banana 3 Litros ', '\L.44.56', 'assets/imgbebidas/babana3l1.jpg', false, false, context),
                    _buildCard('Bebida Vip morada ', '\L.39.6', 'assets/imgbebidas/bebidavipmorada1.jpg', false, false, context),
                    _buildCard('Cafe StarBucks ', '\L.40.5', 'assets/imgbebidas/cafestarbucks1.jpg', false, false, context),
                    _buildCard('Canada Dry Lata', '\L.14.3', 'assets/imgbebidas/canadadrylata1.jpg', false, false, context),
                    _buildCard('Canada Dry Naranja', '\L.14.9', 'assets/imgbebidas/canadadrynaranja1.jpg', false, false, context),
                    _buildCard('Coca Cola 3 litros', '\L.50.2', 'assets/imgbebidas/coca3l1.jpg', false, false, context),
                    _buildCard('Crush Naranja ', '\L.22.55', 'assets/imgbebidas/crushnaranja1.jpg', false, false, context),
                    _buildCard('Jugo Del Monte ', '\L.17.8', 'assets/imgbebidas/delmonte.jpg', false, false, context),
                    _buildCard('Fristy Sabores 6 pack', '\L.90.50', 'assets/imgbebidas/fristysaborespack1.jpg', false, false, context),
                    _buildCard('H2o Bebida Limon', '\L.90.50', 'assets/imgbebidas/h2o1.jpg', false, false, context),
                    _buildCard('Juguito Tampico', '\L. 7.88', 'assets/imgbebidas/jugotampico1.jpg', false, false, context),
                    _buildCard('Del VAlle Fresa', '\L. 27.88', 'assets/imgbebidas/jugovallefrsa1.jpg', false, false, context),
                    _buildCard('Kool Aid Niños', '\L. 97.88', 'assets/imgbebidas/Koolaid1.jpg', false, false, context),
                    _buildCard('Michelob Ultra', '\L. 45.50', 'assets/imgbebidas/michelobultra1.jpg', false, false, context),
                    _buildCard('Mirinda ', '\L. 30.30', 'assets/imgbebidas/mirinda1.jpg', false, false, context),
                    _buildCard(' Pepsi 3 litros', '\L. 35.30', 'assets/imgbebidas/pepsi3l1.jpg', false, false, context),
                    _buildCard('Pepsi Lata Light', '\L. 20.89', 'assets/imgbebidas/pepsiliaghtlata1.jpg', false, false, context),
                    _buildCard('Smirnof verde 6 pack', '\L. 55.36', 'assets/imgbebidas/smirnoffverde.jpg', false, false, context),
                    _buildCard('Vodka', '\L. 66.89', 'assets/imgbebidas/vodka.jpg', false, false, context),


                  ],
                )
            ),

            SizedBox(height: 15.0,)
          ],
        ) ,

    );
  }
  Widget _buildCard(String name, String price, String imgPath, bool added , bool isFavorite, context){
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 3.0, left: 5.0, right: 5.0)  ,
      child: InkWell(

        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context)=>BebidaDetail(
                  assetPath: imgPath,
                  precio:price,
                  nombre:name

              )));
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