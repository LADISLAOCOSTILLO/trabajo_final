
import 'package:flutter/material.dart';
import 'package:trabajo_final/ui/general/colors.dart';

class ItemFilterWidget extends StatelessWidget {
  String text;

ItemFilterWidget({required this.text,});
  @override
  Widget build(BuildContext context){ 
    return Container(
                  margin: EdgeInsets.only(right: 10.0),
                  child: Chip(
                    backgroundColor: kBrandSecondaryColor,
                    labelStyle: TextStyle(
                      color: Colors.white,
                     ),
                    label: Text("Todos"),
                    ),
                    );
  }
}


 
