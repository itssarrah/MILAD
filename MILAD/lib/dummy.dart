import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> predict() async {
  var url = Uri.parse('http://127.0.0.1:5000/predict');

  // Prepare the query parameters
  var queryParams = {
    'age': '30',
    'systolicbp': '120',
    'diastolicbp': '80',
    'bs': '100',
    'bodytemp': '98.6',
    'heartrate': '70'
  };

  // Build the URL with query parameters
  url = Uri.https(url.host, url.path, queryParams);

  // Make the GET request
  var response = await http.get(url);

  if (response.statusCode == 200) {
    // Parse the JSON response
    var data = jsonDecode(response.body);
    // Handle the response data
    print(data);
  } else {
    print('Failed to fetch data');
  }
}

void main() {
  predict();
}
