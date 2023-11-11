import 'package:flutter/material.dart';

class InitPage extends StatelessWidget {
  const InitPage({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar( 
      type: BottomNavigationBarType.fixed,  ///nos permite aumentar bas de 3 botones      
        items: [ 
          BottomNavigationBarItem(
            label: "PRINCIPAL",
            icon: Icon( 
              Icons.home_filled,
            ),
            ),
            BottomNavigationBarItem(
              label: "SHORTS",
              icon: Icon(  
                Icons.play_arrow_rounded
                              ),
              ),
            BottomNavigationBarItem(
              label: "",
              icon: Container(
                margin: const EdgeInsets.only(top: 4.0), //la línea de código que proporcionaste establece un margen de 4.0 píxeles en la parte superior del widget al que se aplica
                child:const Icon( 
                 
                    Icons.add_circle_outline,
                    size: 36.0,
                    ),
                     ),
                   ),
                
                BottomNavigationBarItem(
                label: "SUSCRIPCIONES",
                icon: Icon(  
                 Icons.subscriptions_rounded,
                ),
               ),
              BottomNavigationBarItem(
                label: "BIBLIOTECA",
                icon: Icon( 
                  Icons.video_collection_rounded,
                ),
              ),
        ],
      ),
    ); ///es una estructura de alto nivel que proporciona la estructura visual básica para una aplicación Flutter
  }
}