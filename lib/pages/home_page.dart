import 'dart:math';

import 'package:flutter/material.dart';
import 'package:trabajo_final/ui/general/colors.dart';
import 'package:trabajo_final/ui/widgets/item_filter_widget.dart';
import 'package:video_player/video_player.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 0,
        ),
        child: Column(
          children: [
            SingleChildScrollView(
              
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
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
                    child: VerticalDivider(
                      color: kBrandSecondaryColor,
                      thickness: 1.0,
                    ),
                  ),
                  ItemFilterWidget(
                    text: "Todos",
                    isSelected: true,
                  ),
                  ItemFilterWidget(
                    text: "Mixes",
                    isSelected: false,
                  ),
                  ItemFilterWidget(
                    text: "Musica",
                    isSelected: false,
                  ),
                  ItemFilterWidget(
                    text: "Programacion",
                    isSelected: true,
                  ),
                ],
              ),
            ),

            Column( 
              children: [ 
                Stack( 
                  children:  [  
                Image.network(
                  "https://vod-progressive.akamaized.net/exp=1699843582~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F2199%2F19%2F485996873%2F2176892505.mp4~hmac=e57302d0d8cdc38b5f2a1005b45ad8ab1b4b4dccf487455b4f5cc1e2472b70be/vimeo-prod-skyfire-std-us/01/2199/19/485996873/2176892505.mp4",
                  width: double.infinity,
                  height: height* 0.3,
                  fit: BoxFit.cover,
                ),
                Positioned( 
                  bottom: 0,
                  right: 0,
                  child: Container( 
                    padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
                    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    color: Colors.black.withOpacity(0.7) ,
                  child: Text( 
                    "23:22",
                    style: TextStyle ( 
                     color: Colors.white,
                     fontSize: 12.0, 
                    ),
                  ),
                ),
                ),
                  ],
                ),
              ListTile( 
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar( 
                  backgroundColor: Colors.white12,
                  backgroundImage: NetworkImage("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  ),
                ),
                title: Text(
                  "Ladislao Costillo Camacho",
                  
                  style: TextStyle(  
                    color: Colors.yellow,
                    fontSize: 14.0,
                    ),
                  ),
                subtitle: Text( 
                  "Alanxelmundo · 6.5 m de visitas hace 2 años",
                  style: TextStyle( 
                    color: Colors.white54,
                    fontSize: 13.0,
                  ),

                ),
                trailing: Column(  
                  children: [ 
                    Container( 
                      margin: const EdgeInsets.only(top: 4.0),
                      child: const Icon( 
                        Icons.more_vert,
                        color: Colors.white,
                       ),
                    ),
                  ],
                ),
              ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
