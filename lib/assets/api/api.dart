import 'dart:convert';
import 'package:finapp/models/CardData.dart';
import 'package:finapp/models/TransactionsData.dart';
import 'package:http/http.dart' as http;

// creditCardWidget
class Api {
  Future<http.Response> requestDash() async {
    http.Response response =
        await http.get(Uri.parse("http://192.168.100.5:3333/dash"));

    return response;
  }

  Future<List<CardData>> searchDashboard() async {
    http.Response response = await requestDash();
    if (response.statusCode == 200) {
      var _decoded = json.decode(response.body);

      List<CardData> cardData = _decoded['cards'].map<CardData>((map) {
        return CardData.fromJson(map);
      }).toList();

      return cardData;
    } else {
      throw Exception("Falha ao carregar os dados");
    }
  }

  transactions() async {
    http.Response response = await requestDash();
    if (response.statusCode == 200) {
      var _decoded = json.decode(response.body);
      print(_decoded['transactions']);
      // _decoded['transactions'].cast<Map<String, dynamic>>((map) {
      //   print(map);
      // });
    }
  }
}
