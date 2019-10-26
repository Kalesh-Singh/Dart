import 'dart:async';

// main () {
//   print('About to fetch the data ...');
//   get('http://dljfs')
//     .then((result) {
//       print(result);
//     });
// }

// Using the async - await syntax
main () async {
  print('About to fetch data ...');

  var result = await get('http:/dljfs');
  print(result);
}

// This is just a mock method we created
Future<String> get(String url) {
  return new Future.delayed(new Duration(seconds: 3), () {
    return 'Got the data!';
  });
}

