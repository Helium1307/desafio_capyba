import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:desafio_capyba/components/Choose.dart';


class FormRegister extends StatefulWidget {
  @override
  _FormRegisterState createState() => _FormRegisterState();
}

class _FormRegisterState extends State<FormRegister> {
  
 

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8),
      margin: EdgeInsets.only(top: 250, left: 50, right: 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,  
      ),
        
      height: 250,
      child: Center(
        child: Column(
          children:<Widget> [
         
            Choose(
              icon: FontAwesomeIcons.envelope ,
              color: Color.fromRGBO(0, 0, 0, 0.8),
              text: "Cadastre-se com o Email",
              function: (){ Navigator.pushNamed(context, '/register?:email'); },
            ),
          ],
        ),
      )
    );
  }
}