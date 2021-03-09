import 'package:flutter/material.dart';
import 'package:desafio_capyba/components/Login-Register/FormRegister.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[400],
      body: FormRegister()
    );
  }
}