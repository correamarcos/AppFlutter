import 'package:flutter/material.dart';
import 'package:treinamento_app2/pages/desafio/page_challenge_details.dart';

class ChallengePage extends StatefulWidget {
  const ChallengePage({Key? key}) : super(key: key);

  @override
  State<ChallengePage> createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
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
                child: Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Procurar',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            ),
                          ),
                    ),
                    Container(
                      color: Color.fromRGBO(236, 79, 79, 1),
                      margin: EdgeInsets.only(left: 20),
                      child: IconButton(
                          onPressed: (){},
                          color: Colors.white,
                          icon: Icon(Icons.search_rounded,))
                    ),
                  ],
              )
            ),
            ElevatedButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (BuildContext context) => DetailsChallengePage()));
            }, child: Text('Teste API'))
          ],
        ),
      ),
    );
  }
}
