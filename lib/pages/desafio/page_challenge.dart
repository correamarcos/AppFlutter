import 'package:flutter/material.dart';
import 'package:treinamento_app2/pages/desafio/page_challenge_details.dart';

import '../../models/character.dart';
import '../../network/api_star_wars_provider.dart';

class ChallengePage extends StatefulWidget {
  List<Character> listPersonagens = [];
  ChallengePage({required this.listPersonagens, Key? key}) : super(key: key);

  @override
  State<ChallengePage> createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {

  ApiStarsWarsProvider? charApi = ApiStarsWarsProvider();
  String? pesquisa = "";
  List<Character> resultPesquisa = [];

  final _controllerPesquisa = TextEditingController();

  void _filter(String pesquisa) {
    setState(() {
      resultPesquisa = widget.listPersonagens
          .where((char) =>
          char.name!.toUpperCase().contains(pesquisa.toUpperCase()))
          .toList();
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  const Color.fromRGBO(193, 28, 59, 1),
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
                              controller: _controllerPesquisa,
                              onChanged: (_){
                                setState(() {
                                  resultPesquisa.removeRange(
                                      0, resultPesquisa.length);
                                });
                              },
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
                          color: Color.fromRGBO(193, 28, 59, 1),
                        ),
                        margin: EdgeInsets.only(left: 10),
                        child: IconButton(
                                splashRadius: 50,
                                onPressed: (){
                                  if(_controllerPesquisa.text.isNotEmpty){
                                      _filter(_controllerPesquisa.text);
                                  }
                                },
                                color: Colors.white,
                                icon: Icon(Icons.search_rounded,size: 30,)),
                      ),
                    ],
                ),
                )
            ),
            Expanded(
                child: ListView.builder(
                          itemCount: _controllerPesquisa.text.isEmpty
                                    ? widget.listPersonagens.length
                                    : resultPesquisa.length,
                          itemBuilder: (BuildContext context, index){
                             return resultPesquisa.isEmpty
                                ?
                                Card(
                                  child: Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: SizedBox(
                                            child: ListTile(
                                              onTap: (){
                                                Navigator.push(context,
                                                    MaterialPageRoute(builder: (context) => DetailsChallengePage(
                                                              personagem: widget.listPersonagens.elementAt(index),
                                                      )
                                                    )
                                                );
                                              },
                                              title: Text(widget.listPersonagens.elementAt(index).name!)
                                            ),
                                           ),
                                          ),
                                        IconButton(onPressed: (){
                                              Navigator.push(context,
                                                          MaterialPageRoute(builder: (context) =>
                                                              DetailsChallengePage(
                                                                  personagem: widget.listPersonagens.elementAt(index),
                                                              )
                                                          )
                                              );
                                          }, icon: Icon(Icons.info), color: Color.fromRGBO(193, 28, 59, 1),)
                                      ],
                                    ),
                                  ),
                                )
                               :
                               Card(
                                 child: Expanded(
                                   child: Row(
                                     children: [
                                       Expanded(
                                           child: ListTile(
                                               onTap: (){
                                                 Navigator.push(context,
                                                     MaterialPageRoute(builder: (context) => DetailsChallengePage(
                                                       personagem: resultPesquisa.elementAt(index),
                                                     )
                                                     )
                                                 );
                                               },
                                               title: Text(resultPesquisa.elementAt(index).name!)
                                           ),
                                       ),
                                       IconButton(onPressed: (){
                                         Navigator.push(context,
                                             MaterialPageRoute(builder: (context) =>
                                                 DetailsChallengePage(
                                                   personagem: resultPesquisa.elementAt(index),
                                                 )
                                             )
                                         );
                                       }, icon: Icon(Icons.info), color: Color.fromRGBO(193, 28, 59, 1),)
                                     ],
                                   ),
                                 ),
                               );
                            }
                    )
                )
          ],
        ),
      ),
    );
  }
}