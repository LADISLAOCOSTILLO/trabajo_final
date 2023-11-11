import 'package:flutter/material.dart';
import 'package:trabajo_final/ui/general/colors.dart';

 class InitPage extends StatefulWidget {
  const InitPage({Key? key}): super(key: key);

  @override
  State<InitPage>createState() => _InitPageState();
   }
   class _InitPageState extends State<InitPage>{ 

    int _currentIndex = 0;
    List<Widget> pages=[ 
      Center(child: Text("Principal")),
      Center(child: Text("Shorts")),
      Center(child: Text("Agregar")),
      Center(child: Text("Suscripcion")),
      Center(child: Text("Biblioteca")),
    ];

    @override
      Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrandPrimaryColor,
      appBar: AppBar ( 
        elevation: 0,
        backgroundColor: kBrandPrimaryColor,

        title: Image.asset('assets/images/youtube.png',
       height: 40.0,
        //width: 80.0,
        ),
        
      
      ),

      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar( 
        backgroundColor: kBrandPrimaryColor,
        selectedItemColor: Colors.white, //aplicando color al elemento que se selecciona
        unselectedItemColor: Colors.white70,//esta aplicando color a los elementos que no esta seleccionado
        selectedFontSize: 12.0,
        unselectedFontSize: 9.0,
      type: BottomNavigationBarType.fixed,  ///nos permite aumentar bas de 3 botones      
        currentIndex: _currentIndex, //este comando lo que hace es seleccionar los botones de bar
        onTap: (int value){  
          _currentIndex = value;
          setState(() {});
             },
          
                
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