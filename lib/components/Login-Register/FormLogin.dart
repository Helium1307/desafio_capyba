import 'package:desafio_capyba/components/Choose.dart';
import 'package:flutter/material.dart';

import 'package:desafio_capyba/components/Input.dart';
import 'package:desafio_capyba/components/Button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FormLogin extends StatefulWidget {
  @override
  _FormLoginState createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  String _name;
  
  final _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
          top: 40,
          bottom: 50,
          left: 35,
          right: 35,
        ) , 
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Input(
               validator: (String value){
                  if(value.isEmpty) return "Campo obrigatório";
                  if(!value.contains("@")) return "Isso não é um email"; 
                  return null;
                },
                text: "Email",
                saved: (String name){
                  _name = name;
                },
                marginTop: 120),
              
              
              Input(
                validator: (value){
                  if(value.isEmpty) return "Campo obrigatório";
                  if(value.length < 5) 
                    return "Possue poucos caracteres"; 
                  return null;
                },
                text: "Senha", 
                marginTop: 50,
                hidden: true,
                marginBottom: 80,
                
              ),

              Container(
                
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    FlatButton(
                      child: Text("Esqueci minha senha",
                        style: TextStyle(color: Colors.black54),
                      ),
                      onPressed: (){
                        
                      },
                    ),
                ],)
              ),
              Button(
                text: "Entrar", 
                marginTop: 6, 
                marginBottom: 10,
                
                onClick: () {
                  Navigator.pushNamed(context, '/home');
                      
                },
              ),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: 
                    Border.all(
                      width: 1,
                      color: Colors.white,
                    ),
                  borderRadius: BorderRadius.circular(20)
                ),
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: FlatButton(
                  onPressed: () {},
                  child: Row(
                    children: <Widget> [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(
                          FontAwesomeIcons.google,
                          color: Color.fromRGBO(230, 10, 2, 90)
                        ),
                      ),

                      Text("Entre com sua conta Google")
                    ]
                  )      
              ),
              ),
            
              

              Center(
                child:FlatButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text("Cadastre-se aqui",
                    style: TextStyle(color: Colors.black54),
                  ), 
                ) 
              )

              
            ],
          ),   
          ),
    );
  }
}