import 'package:flutter/material.dart';

class ChoosePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[400],

      body: Center(
        child: SizedBox(

          
          child: Row(children: <Widget>[
            Padding(padding: EdgeInsets.all(20),),
            
            SizedBox(
              height: 90,
              width: 110,
              child: RaisedButton(
                shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular(10)),
                color: Colors.grey[900],
                child: Text("Faça sua conta", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.pushNamed(context, "/register");
                },
              )
            ,),

            SizedBox(width: 110,),
            
            SizedBox(
              height: 90,
              width: 110,
              child: RaisedButton(
                shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular(10)),
                color: Colors.grey[900],
                child: Text("Entre, também, com sua conta Google ",style: TextStyle(fontSize:13,color: Colors.white)),
                onPressed: () => {Navigator.pushNamed(context, "/login")},
              )
            ,),

            
            
          ],),
        ),
      )
    );
  }
}