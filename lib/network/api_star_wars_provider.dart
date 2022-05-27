import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../models/character.dart';

class ApiStarsWarsProvider {
  ApiStarsWarsProvider();

  Future<Character> getCharacters(BuildContext context) async {

    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Carregando...")));

    final response = await http.get(Uri.parse('https://swapi.dev/api/people/1'));

    ScaffoldMessenger.of(context).clearSnackBars();

    if (response.statusCode == 200) {
      final Map<String, dynamic> dados = json.decode(response.body);
      final Character character = Character.fromJson(dados);

      return character;

    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text("Ocorreu um erro na busca.")));
      return Character(
          name: 'Erro',
          height: 'Erro',
          mass: 'Erro',
          hair_color: 'Erro',
          skin_color: 'Erro',
          eye_color: 'Erro',
          birth_year: 'Erro',
          gender: 'Erro');
    }
  }
}
