import 'package:flutter/material.dart';

import '../components/customTextFormField.dart';
class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _Cadastro();
}

class _Cadastro extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller_email = TextEditingController();
    TextEditingController controller_senha = TextEditingController();
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
            CustomTextFormField(campo: 'E-mail', controlador: controller_email,),
            SizedBox(height: 15,),
            CustomTextFormField(campo: 'Senha', controlador: controller_senha,),
            SizedBox(height: 15,),
            ElevatedButton.icon(onPressed: (){
              ();
            },
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent), ),
              icon: Icon(Icons.add), label: Text('Cadastrar', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25,),),),
          ],
        ),
      ),
    );
  }
}
