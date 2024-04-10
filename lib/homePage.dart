import 'package:flutter/material.dart';

import 'components/customTextFormField.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller_nome = TextEditingController();
    TextEditingController controller_email = TextEditingController();
    TextEditingController controller_telefone = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 15,
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('Cadastro Pessoa', style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
      ),
      body: Padding (
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            CustomTextFormField(campo: 'Nome Completo', controlador: controller_nome,),
            SizedBox(height: 15,),
            CustomTextFormField(campo: 'E-mail', controlador: controller_email,),
            SizedBox(height: 15,),
            CustomTextFormField(campo: 'Telefone', controlador: controller_telefone,),
            SizedBox(height: 15,),
            ElevatedButton.icon(onPressed: (){
              ();
            },
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent), ),
              icon: Icon(Icons.add), label: Text('Salvar', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25,),),)
          ],
        ),
      ),
    );
  }
}


