// import 'dart:async';
// import 'dart:convert';
// import 'dart:developer';
// import 'package:http/http.dart' as http;

// class ConvertRepo {
//   static final ConvertRepo _convertRepo = ConvertRepo._internal();

//   factory ConvertRepo() {
//     return _convertRepo;
//   }
//   ConvertRepo._internal();

//   Future<void> convert({
//     required String fromCurr,
//     required String toCurr,
//     required double value,
//   }) async {
//    final url =
//         'https://api.freecurrencyapi.com/v1/latest?${fromCurr}_${toCurr}apikey=AQfbaoJyeFBxXRbvpRybPreaNdRhVk0LWAcpOYVf';
//     Uri uri = Uri.parse(url);
//     final response = await http.get(uri);
//     if (response.statusCode == 200) {
//       final body = response.body;
//       log('body ===> $body');
//       //  log('body ===> $body');
//       Map<String, dynamic> jsonRespons = jsonDecode(response.body);
//       final _data =
//           jsonRespons['${fromCurr}_${toCurr}'];
//     } else {
//       throw Exception('failed to load resuld');
//     }
//   }
// }
