import 'package:flutter/material.dart';
import 'package:trabajo_final/ui/general/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 0,
        ),
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: kBrandSecondaryColor,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                  ),
                  icon: const Icon(
                    Icons.explore_outlined,
                  ),
                  label: const Text(
                    "Explorar", // Agrega el texto que desees aquí
                  ),
                ),
               const SizedBox( 
                  height: 32.0,
                child: VerticalDivider(   //divide con una linea vertical
                  color: kBrandSecondaryColor,
                  thickness: 1.0,

                 ),

                ),
                
              Chip(label: Text("Todos"),),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
