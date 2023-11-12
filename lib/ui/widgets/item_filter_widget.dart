import 'package:flutter/material.dart';
import 'package:trabajo_final/ui/general/colors.dart';

class ItemFilterWidget extends StatelessWidget {
  String text;
  bool isSelected; 

  ItemFilterWidget({

    required this.text,
    required this.isSelected,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10.0),
      child: Chip(
        backgroundColor: isSelected ? Colors.white : kBrandSecondaryColor,
        labelStyle: TextStyle(
          color: isSelected ? kBrandPrimaryColor: Colors.white,
        ),
        label: Text(text), // Utiliza la variable 'text' aquí en lugar de "text"
      ),
    );
  }
}


 
