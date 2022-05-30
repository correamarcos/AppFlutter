import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:treinamento_app2/pages/desafio/page_challenge_details.dart';

import '../../models/character.dart';
import '../../network/api_star_wars_provider.dart';

class ChallengePage extends StatefulWidget {
  const ChallengePage({Key? key}) : super(key: key);

  @override
  State<ChallengePage> createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {

  final Function _getPersonagens = ApiStarsWarsProvider().getCharacters;
  late Future<List<Character>> getChars = _getPersonagens();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  const Color.fromRGBO(236, 79, 79, 1),
        centerTitle: true,
        title: Text("Desafio Extra Page"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Form(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                            height: 50,
                            child: TextFormField(
                              decoration:InputDecoration(
                                hintText: 'Procurar',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                ),
                              ),
                          ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromRGBO(236, 79, 79, 1),
                        ),
                        margin: EdgeInsets.only(left: 10),
                        child: IconButton(
                                splashRadius: 50,
                                onPressed: (){},
                                color: Colors.white,
                                icon: Icon(Icons.search_rounded,size: 30,)),
                      ),
                    ],
                ),
                )
            ),
            Expanded(
                child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return Card(
                        child: ListTile(
                          title: Text(getChars.toString())),
                    );}

            )
            )
          ],
        ),
      ),
    );
  }
}