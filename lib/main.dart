import 'package:aula_firebase/AppRoutes.dart';
import 'package:flutter/material.dart';
import 'package:aula_firebase/listPerson.dart';
import 'package:aula_firebase/pages/login.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'homePage.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: AppRoutes.login,
    routes: AppRoutes.define(),
  ));
}