import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';


class IntroPage extends StatefulWidget{
  @override
  _IntroPageState createState() => _IntroPageState();

  }


  class _IntroPageState extends State<IntroPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: IntroductionScreen(
        showDoneButton: true,
          showSkipButton: true,
        showNextButton: true,
        next: Text("Text"),
        skip: Text("Skip"),
        done: Text("Done"),
        onDone: (){

        },
        onSkip: (){}

        ,

        pages: [
         PageViewModel(
           image:Image.asset('assets/lacteos/bebidaDeAlmendra.png', width: 300, height:300 ,) ,
           title:"Pagina de Introducción" ,
           body: "Pagina de Introducción",
           footer: Text("Basket Case 2021 All Rights Reserved"),
           decoration: const PageDecoration(
             pageColor: Colors.cyan
           ),


         ),
    PageViewModel(
    image:Image.asset('assets/lacteos/bebidaDeAlmendra.png', width: 300, height:300 ,) ,
    title:"Pagina de Introducción" ,
    body: "Pagina de Introducción",
    footer: Text("Basket Case 2021 All Rights Reserved"),
    decoration: const PageDecoration(
    pageColor: Colors.lightGreen
    ),
    ),
        ],
      )
    );
  }

  }