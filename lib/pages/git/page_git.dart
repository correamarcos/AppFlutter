import 'package:flutter/material.dart';

class GitPage extends StatefulWidget {
  const GitPage({Key? key}) : super(key: key);

  @override
  State<GitPage> createState() => _GitPageState();
}

class _GitPageState extends State<GitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  const Color.fromRGBO(236, 79, 79, 1),
        centerTitle: true,
        title: Text("GitHub Page"),
      ),
    );
  }
}
