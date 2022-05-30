import 'package:flutter/material.dart';
import 'package:treinamento_app2/models/user.dart';
import 'package:treinamento_app2/network/api_git_provider.dart';

class GitPage extends StatefulWidget {
  const GitPage({Key? key}) : super(key: key);

  @override
  State<GitPage> createState() => _GitPageState();
}

class _GitPageState extends State<GitPage> {

  final TextEditingController _controllerUser = TextEditingController();
  final Function _searchUser = ApiGitProvider().searchUser;
  UserGit dataUser = UserGit(
    login: "",
    name: "",
    bio: "",
    avatar: "https://pngimg.com/uploads/github/github_PNG40.png"
  );

  @override
  void dispose() {
    _controllerUser.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  const Color.fromRGBO(236, 79, 79, 1),
        centerTitle: true,
        title: const Text("GitHub Page"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 100,
                backgroundImage: NetworkImage(dataUser.avatar)),
                const SizedBox(height: 5),
                Text('Usuário: ${dataUser.login}'),
                const SizedBox(height: 5),
                Text('Nome: ${dataUser.name}'),
                const SizedBox(height: 5),
                Text('Biografia: ${dataUser.bio}', textAlign: TextAlign.center,
              ),

              const SizedBox(height: 10),

              TextFormField(
                controller: _controllerUser,
                decoration: const InputDecoration(
                  labelText: 'Nome',
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(236, 79, 79, 1),
                  ),
                  onPressed: () async {
                    dataUser = await _searchUser(
                      _controllerUser.text, context);
                    setState((){});
                  }, child: const Text('Buscar'))
            ],
          ),
          ),
        ),
      ),
    );
  }
}
