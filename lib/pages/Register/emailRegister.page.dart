import 'package:flutter/material.dart';

class EmailRegister extends StatelessWidget {
  String _name,_email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent[400],
        body: Form(
          child: Padding(
            padding: EdgeInsets.only(top: 50, left: 25, right: 25),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "Email"),
                    onChanged: (email) {
                      _email = email;
                    },
                    validator: (String value){
                      if(value.isEmpty) return "Campo obrigatório";
                      if(!value.contains("@")) return "Isso não é um email"; 
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(labelText: "Senha"),
                    onChanged: (passw) {
                      _password = passw;
                    },
                    validator: (String value){
                      if(value.isEmpty) return "Campo obrigatório";
                      if(value.length < 6) return "Escreva uma senha com mais de 6 dígitos";
                      return null;
                    },
                  ),
                ),
                RaisedButton(
                  child: Text("Cadastrar"),
                  textColor: Colors.white,
                  color: Colors.grey[900],
                  padding: EdgeInsets.symmetric(horizontal: 55, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  onPressed: () async {
                    Navigator.pushNamed(context, '/home');
                  },
                )
              ],
            ),
          ),
        ));
  }
}
