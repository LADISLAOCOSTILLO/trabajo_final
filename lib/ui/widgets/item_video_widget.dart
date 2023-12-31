

import 'package:flutter/material.dart';
import 'package:trabajo_final/models/video_model.dart';

class ItemVideoWidget  extends StatelessWidget {
  //const ItemVideoWidget ({Key?key}): super (key: key);
  VideoModel videoModel;
  ItemVideoWidget({ 
    required this.videoModel,
  });


  @override

  Widget build(BuildContext context){  
    double height=MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.only( bottom: 10.0) ,     
       child: Column( 
                children: [ 
                  Stack( 
                    children:  [  
                  Image.network(
                    videoModel.snippet.thumbnails.medium.url,
                    width: double.infinity,
                    height: height* 0.3,//
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
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    
                    style: TextStyle(  
                      color: Colors.yellow,
                      fontSize: 14.0,
                      ),
                    ),
                  subtitle: Text( 
                    "alanxelmundo • 6.5 M DE Visitas hace 2 años",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
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
    );

}
}