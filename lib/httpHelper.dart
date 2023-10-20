import 'package:http/http.dart' as http;

class HttpHelper {
  final String _apiKey = "25d6d05bf559e0a5e5e5655520f3b9d9";
  final String _baseUrl = "https://api.themoviedb.org/3/movie";

  Future<String> getMoviesByCategory(String category) async {
    final String url = '$_baseUrl/$category?api_key=$_apiKey';
    final http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return response.body;
    } else {
      return 'Failed to fetch data';
    }
  }
}