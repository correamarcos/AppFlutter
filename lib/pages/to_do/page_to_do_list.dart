import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({Key? key}) : super(key: key);

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  final TextEditingController _controllerTask = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<String> _task = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  const Color.fromRGBO(236, 79, 79, 1),
        centerTitle: true,
        title: const Text("To Do List Page"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Form(
              key: _formKey,
                child:Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _controllerTask,
                        decoration: InputDecoration(
                          labelText: 'Adicionar',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          ),
                        keyboardType: TextInputType.text,
                                      validator: (value){
                                          if(value!.trim().isEmpty){
                                            return '';
                                          }
                                          return null;
                                      },
                        ),
                    ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: FloatingActionButton(
                      backgroundColor: const Color.fromRGBO(236, 79, 79, 1),
                      child: const Icon(Icons.add),
                      onPressed: (){
                        if(_formKey.currentState!.validate()){
                            setState((){
                              _task.add(_controllerTask.text);
                            });
                          _controllerTask.clear();
                        }
                      },
                    ),
                  ),
                ],
              )
            ),
            Expanded(child:
                ListView.builder(
                  itemCount: _task.length,
                  itemBuilder: (context, index){
                  return Card(
                    child: ListTile(
                      title: Text(_task[index]),
                    ),
                  );
                })
            ),
          ],
        ),
      ),
    );
  }
}
