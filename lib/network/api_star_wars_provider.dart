import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../models/character.dart';

class ApiStarsWarsProvider {
  ApiStarsWarsProvider();

  Future<List<Character>> getCharacters(BuildContext context) async {

    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Carregando...")));

    final response = await http.get(Uri.parse('https://swapi.dev/api/people'));

    ScaffoldMessenger.of(context).clearSnackBars();

    if (response.statusCode == 200) {
      List<dynamic> listCharacters = json.decode(response.body);
      return  listCharacters.map((json) => Character.fromJson(json)).toList();
    } else {
      throw Exception("Empty Api");
    }
  }
}
