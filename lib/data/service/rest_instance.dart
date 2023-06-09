import 'package:dio/dio.dart';

import 'omdb_api.dart';
import 'youtube_api.dart';

class Rest {
  static final _dio = Dio();
  static late String youtubeEndpoint;
  static late String omdbEndpoint;

  static OmdbApi get omdbInstance {
    return OmdbApi(_dio, baseUrl: omdbEndpoint);
  }

  static YoutubeApi get youtubeInstance {
    return YoutubeApi(_dio, baseUrl: youtubeEndpoint);
  }

  static void initialize() {
    var ytKey = "AIzaSyDkYnExYA68u40nlSlIQMvz8aJ0jY845EU";
    youtubeEndpoint = "https://www.googleapis.com/youtube/v3/search?key=$ytKey";
    omdbEndpoint = "http://www.omdbapi.com/?apikey=7802783c";
  }
}
