import 'package:flutter/material.dart';
import 'package:treinamento_app2/models/task.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({Key? key}) : super(key: key);

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  final TextEditingController _controllerTask = TextEditingController();
  List<Task> _task = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  const Color.fromRGBO(193, 28, 59, 1),
        centerTitle: true,
        title: const Text("To Do List Page"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(

                            child: TextFormField(
                              controller: _controllerTask,
                              decoration: InputDecoration(
                                labelText: 'Adicionar',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                ),
                              keyboardType: TextInputType.text,
                              ),

                        ),
                      ),
                    Container(
                      margin: const EdgeInsets.only(left: 5, bottom: 18),
                      child: IconButton(onPressed: (){

                          if(_controllerTask.text.trim().isNotEmpty) {
                              Task tarefa = Task(
                                  name: _controllerTask.text, status: false);
                              setState(() {
                                _task.add(tarefa);
                              });
                              _controllerTask.clear();
                          }

                        }, icon: Icon(Icons.add_circle_sharp, color: Color.fromRGBO(193, 28, 59, 1), size: 50,))
                    ),
                  ],
                ),
            Expanded(child:
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: ListView.builder(
                    itemCount: _task.length,
                    itemBuilder: (context, index){
                    return Card(
                      child: Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                child: ListTile(
                                  title: Text("${_task[index].name}"),
                                ),
                            ),
                            IconButton(
                              color: _task[index].status ? Colors.green : Color.fromRGBO(193, 28, 59, 1),
                              onPressed: (){
                                if(_task[index].status == true){
                                  _task[index].status = false;
                                }else{
                                  _task[index].status = true;
                                }
                                setState((){});
                              }, icon: Icon(Icons.check_circle),
                            ),
                            IconButton(onPressed: (){
                                _task.remove(_task[index]);
                                setState((){});
                            }, icon: Icon(Icons.delete, color: Color.fromRGBO(193, 28, 59, 1),))
                          ],
                        ),
                      ),
                    );
                  }),
                )
            ),
          ],
        ),
      ),
    );
  }
}
