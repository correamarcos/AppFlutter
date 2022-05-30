import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/user.dart';

class ApiGitProvider{
  ApiGitProvider();

  Future<UserGit> searchUser(
      String user,
      BuildContext context) async{

    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Buscando...")));

    final response = await http.get(
        Uri.parse('https://api.github.com/users/$user'));

    ScaffoldMessenger.of(context).clearSnackBars();

    if(response.statusCode == 200){
      final Map<String, dynamic> user = json.decode(response.body);
      final UserGit dataUser = UserGit.fromJson(user);
      return dataUser;
    }else{
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Color.fromRGBO(236, 79, 79, 1),
          content: Text("Erro ao buscar usuario.")));
      return UserGit(
          login: "Error",
          name: "Error",
          bio: "Error",
          avatar: "https://pngimg.com/uploads/github/github_PNG40.png");
    }
  }
}