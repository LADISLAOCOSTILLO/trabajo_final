
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart%20';
import 'package:trabajo_final/models/video_model.dart';
import 'package:trabajo_final/utils/constants.dart';

class APIService { 

Future<List<VideoModel>>getVideos() async {
  List<VideoModel> videoModel = [];
  String _path="$pathProduction/search?part=snippet&key=$apiKey&maxResults=15&regionCode=PE";
Uri _Uri= Uri.parse(_path);
http.Response response = await http.get(_Uri);
if (response.statusCode == 200){ 
  Map<String, dynamic> MyApp = json.decode (response.body);
  List videos =MyApp  [ "items"];
  videoModel=videos.map((e) => VideoModel.fromJson(e)).toList();
  return videoModel;

 }
 return videoModel;
}
}