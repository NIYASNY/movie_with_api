import 'package:movie_app_with_api/api_base.dart';

class AuthRepo {
  final String _apikey = 'https://api.themoviedb.org/3/authentication/token/validate_with_login';
  final apibase _apibase = apibase();

  Future<dynamic> login(String? email, String? password) async {
    final response = await _apibase.postLogin(_apikey, {
      "email": email,
      "password" : password,
    });
    return response;
  }
}
