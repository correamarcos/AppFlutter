import 'package:flutter/material.dart';

class DetailsChallengePage extends StatefulWidget {
  const DetailsChallengePage({Key? key}) : super(key: key);

  @override
  State<DetailsChallengePage> createState() => _DetailsChallengePageState();
}

class _DetailsChallengePageState extends State<DetailsChallengePage> {
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
          children: const [
            SizedBox(height: 5),
            Text('Nome: '),
            SizedBox(height: 5),
            Text('Altura: '),
            SizedBox(height: 5),
            Text('Peso: '),
            SizedBox(height: 5),
            Text('Cor do cabelo: '),
            SizedBox(height: 5),
            Text('Cor da pele: '),
            SizedBox(height: 5),
            Text('Cor dos olhos: '),
            SizedBox(height: 5),
            Text('Aniversario: '),
            SizedBox(height: 5),
            Text('Cor da pele: '),
            SizedBox(height: 5),
            Text('Genero: ')
          ],
        ),
      ),
    );
  }
}
