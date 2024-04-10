import 'package:aula_firebase/AppRoutes.dart';
import 'package:flutter/material.dart';

import '../components/customTextFormField.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
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
        title: Text('Faça seu login', style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
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
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue), ),
              icon: Icon(Icons.add), label: Text('Entrar', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25,),),),
            TextButton.icon(onPressed: () {
              Navigator.pushNamed(context, AppRoutes.forgot);
            }, icon: Icon(Icons.question_mark, color: Colors.blue,), label: Text('Esqueceu a senha?', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 18,),),),
            TextButton.icon(onPressed: () {
              Navigator.pushNamed(context, AppRoutes.cadastro);
            }, icon: Icon(Icons.supervised_user_circle_rounded, color: Colors.blue,), label: Text('Não tem uma conta? Cadastre-se!', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 18,),),),
          ],
        ),
      ),
    );
  }
}
