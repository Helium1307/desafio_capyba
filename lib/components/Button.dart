import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String text;
  final Function onClick;
  final double marginTop, marginRight,marginBottom,marginLeft;
  Button({
    Key key, 
    this.text, 
    this.marginTop = 0,
    this.marginRight = 0,
    this.marginBottom = 0,
    this.marginLeft = 0,
    this.onClick,
    }) : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container( 
      margin: EdgeInsets.only(
        top: widget.marginTop,
        left: widget.marginLeft,
        right: widget.marginRight,
        bottom: widget.marginBottom,
      ),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.indigo[700],
        borderRadius: BorderRadius.all(Radius.circular(5)) 
      ),
      child: FlatButton(
          onPressed: () async {
            await widget.onClick;
            Navigator.pushNamed(context, '/home');
          },
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(color: Colors.white),
            ),
          )  
        )
    );
  }
}