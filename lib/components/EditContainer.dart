import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class EditContainer extends StatefulWidget {
  
  final String text;

  EditContainer({Key key, this.text});
  
  @override
  _EditContainerState createState() => _EditContainerState();
}

class _EditContainerState extends State<EditContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 45),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[300],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget> [
            Text(widget.text,),
            SizedBox(
              width: 50,
              child: Center(
                child: FlatButton(
                  onPressed: (){},
                  child: Center(child: Icon(Icons.create),) 
                ),
              )
            ),
          ],
        ),
      )
    );
  }
}