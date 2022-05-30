import 'package:flutter/material.dart';

class DetailsChallengePage extends StatelessWidget {
  Map<String, dynamic> personagem;
  DetailsChallengePage({Key? key, required this.personagem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  const Color.fromRGBO(236, 79, 79, 1),
        centerTitle: true,
        title: Text(personagem['name']),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 5),
            Text('Nome: ' + personagem['name']),
            const SizedBox(height: 5),
            Text('Altura: ' + personagem['name']),
            const SizedBox(height: 5),
            Text('Peso: ' + personagem['name']),
            const SizedBox(height: 5),
            Text('Cor do cabelo: ' + personagem['name']),
            const SizedBox(height: 5),
            Text('Cor da pele: ' + personagem['name']),
            const SizedBox(height: 5),
            Text('Cor dos olhos: ' + personagem['name']),
            const SizedBox(height: 5),
            Text('Aniversario: ' + personagem['name']),
            const SizedBox(height: 5),
            Text('Genero: ' + personagem['name'])
          ],
        ),
      ),
    );
  }
}
