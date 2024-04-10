import 'package:flutter/material.dart';

class Forgot extends StatefulWidget {
  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text('Recuperar Senha', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Informe seu e-mail para recuperar a senha:",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'E-mail',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Adicione sua lógica de recuperação de senha aqui
              },
              child: Text('Recuperar'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.blueAccent, // Cor do texto
                minimumSize: Size(double.infinity, 50), // Largura total e altura adequada
              ),
            ),
          ],
        ),
      ),
    );
  }
}