//import 'package:flutter/cupertino.dart';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    Myapp(),
  );
}


class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(), 
    );
  }
}
 
     //creando una nueva clase statelessw para reutilizar codigo //poo

    class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   //const HomePage({super.key});
   int DadoIzquierdo =Random().nextInt(6) + 1; //0-5;
   int DadoDerecho = Random().nextInt(6) + 1; //0-5;

   @override
   Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.deepPurple,
          appBar: AppBar(
            title: const Text("DiceApp"),// a text antecede const = valor constante 
            centerTitle: true,
            backgroundColor: Colors.deepPurple,
            elevation: 10.0,
          ),
          body: Center(
            child: Row( 
              children: [

                
                Expanded (
                  child: TextButton(
                    onPressed:() {
                      
                    DadoIzquierdo = Random().nextInt(6) + 1; //0-5
                    DadoDerecho =Random().nextInt(6) + 1; //0-5
                    //trabaja con el statefulwidget, permite redibujar el grafico
                    setState(() {
                    });
                    },

                    child: Image.asset(
                      "assets/images/dice$DadoIzquierdo.png",
                      ),
                  ),
                    flex: 1,
                ),


                  Expanded (
                  child: TextButton(
                    onPressed: () {

                      //print("dado derecho");
                      DadoDerecho =Random().nextInt(6) + 1; //0-5
                      DadoIzquierdo = Random().nextInt(6) + 1; //0-5
                    setState(() {
                    });
                    },

                    child: Image.asset(
                      "assets/images/dice$DadoDerecho.png",
                      ),
                  ),
                    flex: 1,
                ),



              ],
            ),
          ),
     );
   }
}
/////


 