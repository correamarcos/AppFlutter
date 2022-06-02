import 'package:flutter/material.dart';

import '../../models/character.dart';

class DetailsChallengePage extends StatelessWidget {
  final Character? personagem;
  const DetailsChallengePage({this.personagem, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  const Color.fromRGBO(193, 28, 59, 1),
        centerTitle: true,
        title: Text("${personagem!.name}"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 5),
            Text("Nome: ${personagem!.name}",style: TextStyle(color: Colors.black, fontSize: 20),),
            const SizedBox(height: 5),
            Text("Altura: ${personagem!.height}",style: TextStyle(color: Colors.black, fontSize: 20),),
            const SizedBox(height: 5),
            Text("Peso: ${personagem!.mass}",style: TextStyle(color: Colors.black, fontSize: 20),),
            const SizedBox(height: 5),
            Text("Cor do Cabelo: ${personagem!.hair_color}",style: TextStyle(color: Colors.black, fontSize: 20),),
            const SizedBox(height: 5),
            Text("Cor da Pele: ${personagem!.skin_color}",style: TextStyle(color: Colors.black, fontSize: 20),),
            const SizedBox(height: 5),
            Text("Cor dos Olhos: ${personagem!.eye_color}",style: TextStyle(color: Colors.black, fontSize: 20),),
            const SizedBox(height: 5),
            Text("Aniversario: ${personagem!.birth_year}",style: TextStyle(color: Colors.black, fontSize: 20),),
            const SizedBox(height: 5),
            Text("Gênero: ${personagem!.gender}",style: TextStyle(color: Colors.black, fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
