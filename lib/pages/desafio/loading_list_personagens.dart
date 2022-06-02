
import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:treinamento_app2/network/api_star_wars_provider.dart';
import 'package:treinamento_app2/pages/desafio/page_challenge.dart';

class LoadingListPersonagens extends StatefulWidget {
  const LoadingListPersonagens({Key? key}) : super(key: key);

  @override
  State<LoadingListPersonagens> createState() => _LoadingListPersonagensState();
}

class _LoadingListPersonagensState extends State<LoadingListPersonagens> {

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      futureNavigator: ApiStarsWarsProvider().loadPersonagemStarWars(),
      title: const Text("Carregando\nPersonagens",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 18)),
      backgroundColor: Color.fromRGBO(193, 28, 59, 1),
      logo: Image.network("https://cdn.icon-icons.com/icons2/319/PNG/512/Darth-Vader-icon_34508.png"),
      showLoader: true,
      loadingText: const Text("Loading. . .",
                    style: TextStyle(color: Colors.black, fontSize: 23),),
    );
  }
}
