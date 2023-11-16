
import 'package:http/http.dart' as http;
import 'package:http/http.dart%20';
class APIService { 

getVideos() async {
  String _path="https://youtube.googleapis.com/youtube/v3/search?part=snippet&key=AIzaSyAEKLE8aMsLIxl2GrNql7OXZ5sNVYV0Ad8&maxResults=20&regionCode=PE";
Uri _Uri= Uri.parse(_path);
http.Response response = await http.get(_Uri);
print(response.statusCode);
print (response.body);
 }

}