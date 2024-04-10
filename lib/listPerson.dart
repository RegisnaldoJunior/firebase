import 'package:flutter/material.dart';
class ListPerson extends StatefulWidget {
  const ListPerson({super.key});

  @override
  State<ListPerson> createState() => _ListPersonState();
}

class _ListPersonState extends State<ListPerson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 15,
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('Página Inicial', style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton.icon(onPressed: () {}, label: Text('Cadastrar Pessoa'), icon: Icon(Icons.add_box),),
                ElevatedButton.icon(onPressed: () {}, label: Text('Cadastrar Produto'), icon: Icon(Icons.shop),),
              ],
            ),
            Row(
              children: [
                ElevatedButton.icon(onPressed: () {}, label: Text('Cadastrar Fornecedor'), icon: Icon(Icons.store),),
                ElevatedButton.icon(onPressed: () {}, label: Text('Listar Pessoas'), icon: Icon(Icons.list_alt),),
              ],
            ),
            Row(
              children: [
                ElevatedButton.icon(onPressed: () {}, label: Text('Listar Produto'), icon: Icon(Icons.view_list_sharp),),
                ElevatedButton.icon(onPressed: () {}, label: Text('Listar Fornecedor'), icon: Icon(Icons.featured_play_list_rounded),),
              ],
            ),
          ],  // Children
        ), // Child
      ),
    );
  }
}
