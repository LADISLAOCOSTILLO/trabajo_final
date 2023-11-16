
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart%20';
import 'package:trabajo_final/models/video_model.dart';
class APIService { 

getVideos() async {
  List<VideoModel> videoModel = [ ];
  String _path="https://youtube.googleapis.com/youtube/v3/search?part=snippet&key=AIzaSyAEKLE8aMsLIxl2GrNql7OXZ5sNVYV0Ad8&maxResults=30&regionCode=PE";
Uri _Uri= Uri.parse(_path);
http.Response response = await http.get(_Uri);
if (response.statusCode == 200){ 
  Map<String, dynamic> MyApp = json.decode (response.body);
  List videos =MyApp  [ "items"];
  videoModel=videos.map((e) => VideoModel.fromJson(e)).toList();
  print(videoModel);

 }
}
}