import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              
              accountName: Text("Ranvijay kumar"), 
              accountEmail: Text("ranvijaykumar9708@gmail.com")
              )
              
              )
          
          
          
        ],
      ),
    );
  }
}
