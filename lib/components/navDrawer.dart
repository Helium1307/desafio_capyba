import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
 
 

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
      
        children: <Widget>[
          DrawerHeader(
            
            child: Column(
              
              children: <Widget>[
                
                SizedBox(
                  width: 100,
                  height: 115,
                  
                  child: Column(
                    children:<Widget> [
                      CircleAvatar(
                        backgroundImage: NetworkImage('https://github.com/Helium1307.png'),
                        radius: 50,
                      )
                      

                    ],)
                ),
                
                Text('Nome do user'),
              ],

                
            ) 
          ),
          
          ListTile(
            leading: Icon(Icons.perm_identity),
            title: Text("Meu Perfil"),
            onTap: () {
              Navigator.pushNamed(context, "/profile");
            },
          ),
        ],
      )
    );
  }
}