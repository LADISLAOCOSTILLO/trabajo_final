import 'dart:math';

import 'package:flutter/material.dart';
import 'package:trabajo_final/models/video_model.dart';
import 'package:trabajo_final/services/api_services.dart';
import 'package:trabajo_final/ui/general/colors.dart';
import 'package:trabajo_final/ui/widgets/item_filter_widget.dart';
import 'package:trabajo_final/ui/widgets/item_video_widget.dart';
import 'package:video_player/video_player.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final APIService _apiService = APIService();
  List<VideoModel> videos=[];
  @override
  //estamos pidiendo las peliculas 
  initState(){ 
    super.initState();
    getData();
  }
  //const HomePage({Key? key}) : super(key: key);

  getData(){  
    _apiService.getVideos().then((value){ 
      videos=value;
      setState(() {}); 
      });
    
  }
  @override
  Widget build(BuildContext context) {
    //_apiService.getVideos();

    //double height=MediaQuery.of(context).size.height;
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
                  "https://images.pexels.com/photos/88476/pexels-photo-88476.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  width: double.infinity,
                  height:  0.3,//
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
                leading: CircleAvatar(  //imagen en circulo
                  backgroundColor: Colors.white12,
                  backgroundImage: NetworkImage("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  ),
                ),
                title: Text(
                  "Loren Ipsum Dolor Sit Amet",
                  
                  style: TextStyle(  
                    color: Colors.yellow,
                    fontSize: 14.0,
                    ),
                  ),
                subtitle: Text( 
                  "alanxelmundo • 6.5 M DE Visitas hace 2 años",
                  style: TextStyle( 
                    color: Colors.white54,
                    fontSize: 13.0,
                  ),

                ),
                trailing: Column(     ///para los 3 puntos
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
          const SizedBox( 
            height: 10.0,

          ),
          ListView.builder( 
            shrinkWrap: true,
            itemCount: videos.length,
            itemBuilder: (BuildContext context, int index){ 
              return ItemVideoWidget();
            }

          ),
          
          ],
        ),
      ),
    );
  }
}
