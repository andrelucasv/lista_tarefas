import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List _listaTarefas = ["Treinar", "Estudar", "Fazer compras"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de tarefas"),
        backgroundColor: Colors.purple,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        child: const Icon(Icons.add),
        onPressed: () {

          showDialog(
            context: context, 
            builder: (context) {
              return AlertDialog(
                title: const Text("Adicionar tarefa"),
                content: TextField(
                   decoration: const InputDecoration(
                    labelText: "Digite sua tarefa"
                   ),
                   onChanged: (text) {
                     
                   },
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context), 
                    child: const Text("Cancelar")
                  ),
                  TextButton(
                    onPressed: () {
                      //Criar função de salvar

                      Navigator.pop(context);
                    }, 
                    child: const Text("Salvar")
                  ),
                ],
              );
            }
           );

        }
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _listaTarefas.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_listaTarefas[index]),
                ); 
              }
            )
          )
        ],
      ),
    );
  }
}