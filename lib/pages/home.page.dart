import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:desafio_capyba/components/navDrawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomePage extends StatefulWidget {
  
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  int _currentIndex = 0;

  void handleIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[400],
      drawer: NavDrawer(),
      appBar: AppBar(
        
        backgroundColor: Colors.grey[900],
        title: Text("Menu")  
      ),
      
      body: Container(
        child: Column(
          children: <Widget> [
            
          ]
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        
        onTap: handleIndex,
        selectedItemColor: Colors.indigo[400],
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            label: "Home",  
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.https),
            label: "Restricted",  
          ),
          
        ],
      ),
       
      
    );
  }
}