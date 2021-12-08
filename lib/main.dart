import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tienda/bottom_bar.dart';

import 'package:tienda/panaderia_page.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:tienda/snack_page.dart';
import 'package:tienda/start.dart';
import 'bebidas_page.dart';

import 'carnes_page.dart';
import 'condimentos_page.dart';
import 'cuidado_page.dart';
import 'frutas_verduras_page.dart';
import 'lacteos_page.dart';

List<String> ArregloCarrito = [];
List<double> ArregloCarritoPrecio = [];
Map<String, int> measures={

};
void main() {
  runApp(inicio());
}

class MyShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 8, vsync: this);
  }

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
          onPressed: () {},
        ),
        title: Text('Basquet Case',
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
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 15.0),
          Text('Categorias',
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 42.0,
                fontWeight: FontWeight.bold,
                color: Color(0xbf176c82),
              )),
          SizedBox(height: 15.0),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: Color( 0xe6003049),
            isScrollable: true,
            labelPadding: EdgeInsets.only(right: 45.0),
            unselectedLabelColor: Color(0xbf176c82),
            tabs: [
              Tab(
                child: Text('Snacks',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 21.0,
                    )),
              ),
              Tab(
                child: Text('Lacteos',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 21.0,
                    )),
              ),
              Tab(
                child: Text('Verduras',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 21.0,
                    )),
              ),
              Tab(
                child: Text('Carnes',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 21.0,
                    )),
              ),
              Tab(
                child: Text('Bebidas',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 21.0,
                    )),
              ),
              Tab(
                child: Text('Panaderia',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 21.0,
                    )),
              ),
              Tab(
                child: Text('Condimentos',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 21.0,
                    )),
              ),
              Tab(
                child: Text('Higiene',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 21.0,
                    )),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height - 20.0,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: [
                SnackPage(),
                LacteosPage(),
                FrutasPage(),
                CarnesPage(),
                BebidasPage(),
                PanaderiaPage(),
                CondimentosPage(),
                CuidadoPage(),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xbf176c82),
        child: const Icon(Icons.store_mall_directory_sharp ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
