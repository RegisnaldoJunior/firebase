import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String campo;
  final TextEditingController controlador;
  const CustomTextFormField({super.key, required this.campo, required this.controlador});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controlador,
      decoration: InputDecoration(
          labelText: '$campo',
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent)
          )
      ),
    );
  }
}
