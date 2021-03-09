import 'package:flutter/material.dart';

class Choose extends StatefulWidget {
  
  final String text;
  final IconData icon;
  final Color color;
  final Function function;
  Choose({Key key, this.text, this.icon, this.color, this.function});
  

  @override
  _ChooseState createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 90, bottom: 25),
      child: RaisedButton(
        onPressed: widget.function,
        
        child: Container(
          
          width: 220,
          height: 53,
          child: Row(
            
            children:<Widget> [
              Padding(padding: EdgeInsets.only(right: 10),
                child: Icon(widget.icon, color: widget.color),
              ),
              Text(
                widget.text,
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
        )
      )
    );
  }
}