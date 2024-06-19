import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class WallpaperApiService {

  Future<String?> apiCalling(String category) async {
    String api =
        'https://pixabay.com/api/?key=37372282-2d6127399e7dba288b41bdcf7&q=yellow+flowers&image_type=photo';
    Response response = await http.get(Uri.parse(api));

    if (response.statusCode == 200) {
      return response.body;
    }
    return null;
  }
}
