import 'package:desafio_capyba/components/EditContainer.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[400],
      body: Center(
         
        child: Container(
          width: 350,
          height: 450,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
              children: <Widget> [
                EditContainer(text: "Nome do usuário",),
                EditContainer(text: "Email do usuário",),
                EditContainer(text: "Senha do usuário",),
              ],
            ),
          )
        ),
      ),
    );
  }
}