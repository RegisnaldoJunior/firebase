import 'package:aula_firebase/homePage.dart';
import 'package:aula_firebase/listPerson.dart';
import 'package:aula_firebase/pages/cadastro.dart';
import 'package:aula_firebase/pages/forgot.dart';
import 'package:aula_firebase/pages/login.dart';
import 'package:flutter/material.dart';


class AppRoutes {
  static const homePage = '/homePage';
  static const listPerson = '/listPerson';
  static const login = '/login';
  static const cadastro = '/cadastro';
  static const forgot = '/forgot';

  static Map<String, WidgetBuilder> define(){
    return {
      homePage: (BuildContext context) => HomePage(),
      listPerson: (BuildContext context) => ListPerson(),
      login: (BuildContext context) => Login(),
      cadastro: (BuildContext context) => Cadastro(),
      forgot: (BuildContext context) => Forgot(),
    };
  }
}