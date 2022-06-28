import 'package:http/http.dart' as http;
import 'dart:convert';

class IMDBMovieProvider {
  // This is base Image URL. 
  // It is used to get image from API.
  // Usage + MovieModel().posterPath -- Instance of MovieModel.
  static const String imagePathPrefix = 'https://image.tmdb.org/t/p/w500/';

  static getJson() async {
    const String apiKey = '920141c81a38eb91e83b64d39dd1cbf9';
    const String apiEndPoint =
        "http://api.themoviedb.org/3/discover/movie?api_key=$apiKey&sort_by=popularity.desc";
    final apiResponse =
        await http.get(Uri.parse(apiEndPoint));
    return json.decode(apiResponse.body);
  }
}
