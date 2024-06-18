// import 'dart:convert';
// import 'dart:developer';
//
// import 'package:http/http.dart';
// class ApiService {
//   String url = 'https://...';
//
//   Future<void> apiCall() async {
//     // Response response = await http.get(
//     //     Uri.parse(url)
//     // );
//
//     if (response.statusCode == 200) {
//       log('Success');
//       // prints String data by skipping all json decoding process
//       List l1 = jsonDecode(response.body);
//       print(l1[0]);
//     }
//     else {
//       log('Failed!');
//     }
//   }
// }
//
//
//
