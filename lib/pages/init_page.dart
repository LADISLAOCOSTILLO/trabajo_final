import 'package:flutter/material.dart';

class InitPage extends StatelessWidget {
  const InitPage({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar( 
        items: [ 
          BottomNavigationBarItem(
            label: "home",
            icon: Icon( 
              Icons.add,
            ),
            ),
            BottomNavigationBarItem(
              label: "perfil",
              icon: Icon(  
                Icons.add,
              )
              )
        ],

      ),
    ); ///es una estructura de alto nivel que proporciona la estructura visual básica para una aplicación Flutter
  }
}