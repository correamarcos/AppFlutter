import 'package:flutter/material.dart';
import 'package:treinamento_app2/pages/desafio/loading_list_personagens.dart';
import 'package:treinamento_app2/pages/desafio/page_challenge.dart';
import 'package:treinamento_app2/pages/git/page_git.dart';

import '../to_do/page_to_do_list.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:  const Color.fromRGBO(193, 28, 59, 1),
          centerTitle: true,
          title: const Text("Home Page"),
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(100, 40),
                  primary: const Color.fromRGBO(193, 28, 59, 1),
                ),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => ToDoPage()));
                },
                child: const Text("To do List")),
            ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  minimumSize: const Size(100, 40),
                  primary: const Color.fromRGBO(27, 107, 227, 1)
                ),
                onPressed: (){
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (BuildContext context) => const GitPage()));
                },
                child: const Text("GitHub")),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(100, 40),
                  primary: const Color.fromRGBO(80, 237, 124, 1)
                ),
                onPressed: (){
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (BuildContext context) => LoadingListPersonagens()));
                }, child: const Text("Desafio +")),
          ],
        ),
      ),
    );
  }
}
