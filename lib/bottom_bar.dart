import 'package:flutter/material.dart';

import 'login.dart';

class BottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement createState
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 6.0,
      color: Colors.transparent,
      elevation: 10.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius  : BorderRadius.only(
            topLeft: Radius.circular(5.0),
            topRight: Radius.circular(5.0)
          ) ,
              color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width /2 -40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Icon(Icons.home, color:Color(0xff176c82)),

                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => login_page()));
                      },
                      icon:
                      Icon(Icons.person_outline, color: Color(0xFF676E79)))


                ],

              ),
            ),
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width /2 -40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.search, color:Color(0xff176c82)),
                  Icon(Icons.shopping_basket, color:Color(0xFF676E79)),

                ],

              ),
            ),
          ],
        ),
      ),

    );
  }




}