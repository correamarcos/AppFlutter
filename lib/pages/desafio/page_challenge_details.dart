import 'package:flutter/material.dart';

import '../../models/character.dart';

class DetailsChallengePage extends StatefulWidget {
  const DetailsChallengePage({Key? key}) : super(key: key);

  @override
  State<DetailsChallengePage> createState() => _DetailsChallengePageState();
}

class _DetailsChallengePageState extends State<DetailsChallengePage> {
  Character character = Character(
      name: "",
      height: "",
      mass: "",
      hair_color: "",
      skin_color: "",
      eye_color: "",
      birth_year: "",
      gender: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  const Color.fromRGBO(236, 79, 79, 1),
        centerTitle: true,
        title: const Text("Detalhes"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 5),
            Text('Nome: ${character.name}'),
            const SizedBox(height: 5),
            Text('Altura: ${character.height}'),
            const SizedBox(height: 5),
            Text('Peso: ${character.mass}'),
            const SizedBox(height: 5),
            Text('Cor do cabelo: ${character.hair_color}'),
            const SizedBox(height: 5),
            Text('Cor da pele: ${character.skin_color}'),
            const SizedBox(height: 5),
            Text('Cor dos olhos: ${character.eye_color}'),
            const SizedBox(height: 5),
            Text('Aniversario: ${character.birth_year}'),
            const SizedBox(height: 5),
            Text('Genero: ${character.gender}')
          ],
        ),
      ),
    );
  }
}
