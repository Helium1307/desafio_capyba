import 'package:flutter/material.dart';

import 'package:desafio_capyba/pages/choose.page.dart';

import 'package:desafio_capyba/pages/home.page.dart';
import 'package:desafio_capyba/pages/login.page.dart';
import 'package:desafio_capyba/pages/register.page.dart';
import 'package:desafio_capyba/pages/profile.page.dart';
import 'package:desafio_capyba/pages/Register/emailRegister.page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'desafio_capyba',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/choose",
      routes: {
        "/choose": (context) => ChoosePage(), //Escolha entre criar e logar
        "/login": (context) => LoginPage(),// login
        "/register": (context) => RegisterPage(),// criar conta com google
        "/home":  (context) => HomePage(),// 1 page quando se loga
        "/profile": (context) => Profile(),//perfil da pessoa
        "/register?:email": (context) => EmailRegister()
      }
    );
  }
}