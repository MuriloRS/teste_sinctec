import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

const baseUrl = 'http://gerador-nomes.herokuapp.com/nomes/10';

class HttpClient {
  final http.Client httpClient;
  HttpClient({@required this.httpClient});

  getRequest() async {
    try {
      var response = await httpClient.get(baseUrl);
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonResponse = json.decode(response.body);

        return jsonResponse;
      } else
        print('erro -get');
    } catch (_) {}
  }
}
