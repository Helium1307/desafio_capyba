import 'package:flutter/material.dart';
import 'package:desafio_capyba/components/Login-Register/FormLogin.dart';




class LoginPage extends StatelessWidget {
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[400],
      resizeToAvoidBottomPadding: false,
      body: FormLogin()
    );    
  }
}