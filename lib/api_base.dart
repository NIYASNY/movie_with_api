// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:movie_app_with_api/constants.dart';

// class apibase {
//   Future<dynamic> postLogin(String url, dynamic body) async {
//     final response = await http.post(Uri.parse(apiUrl + url), body: body);
//     var responseJson = _returnResponse(response);
//     print(responseJson);
//     return responseJson;
//   }
// }

// _returnResponse(http.Response response) {
//   switch (response.statusCode) {
//     case 200:
//       var responseJson = jsonDecode(response.body.toString());
//       return responseJson;
//     case 400:
//       var responseError = jsonDecode(response.body.toString());
//       return responseError;

//     default:
//       return Exception('default error ${response.statusCode.toString()}');
//   }
// }
