import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:treinamento_app2/pages/desafio/page_challenge.dart';
import '../models/character.dart';

class ApiStarsWarsProvider {
  ApiStarsWarsProvider();

  Future<List<Character>> getCharacters() async {
    List<Character> listPersonagens = [];

    final response = await http.get(Uri.parse('https://swapi.dev/api/people'));
    if (response.statusCode == 200) {
      final Map<String, dynamic> chars = json.decode(response.body);
      final List<dynamic> results = chars['results'];
      listPersonagens = results.map((chars) => Character.fromJson(chars)).toList();
    }
    return listPersonagens;
  }

  Future<Widget> loadPersonagemStarWars() async {
    return Future.value(ChallengePage(
      listPersonagens: await getCharacters(),
    ));
  }
}
