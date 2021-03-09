import 'package:flutter/material.dart';

class Input extends StatefulWidget {

final String text;
final bool hidden;
final TextInputType inputType;
final Function validator,saved;
final double marginTop, marginRight,marginBottom,marginLeft;
  Input({
    Key key, 
    this.text, 
    this.saved,
    this.marginTop = 0,
    this.marginRight = 0,
    this.marginBottom = 0,
    this.marginLeft = 0,
    this.hidden = false,
    this.validator,
    this.inputType,
    }) : super(key: key);
  @override
  _InputState createState() => _InputState();
}


class _InputState extends State<Input> {
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: widget.marginTop,
        left: widget.marginLeft,
        right: widget.marginRight,
        bottom: widget.marginBottom,
      ),
      child:TextFormField(
        validator: widget.validator,
        onSaved: widget.saved,
        keyboardType: widget.inputType,
        obscureText: widget.hidden,
        decoration: InputDecoration(
          labelText: widget.text,
          labelStyle: TextStyle(color: Colors.black54) 
        ),
        
      
      ),
    );
  }
}