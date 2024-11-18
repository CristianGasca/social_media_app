import 'package:flutter/material.dart';
import 'package:music_player_app/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          // logo
          DrawerHeader(child: Center(
            child: Icon(Icons.music_note,
            size: 40,
            color: Theme.of(context).colorScheme.inversePrimary,),
          )),

          //home title
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 25),
            child: ListTile(
              title: const Text('HOME', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),),
              leading: const Icon(Icons.home),
              iconColor: Colors.grey,
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ),

          //settings title
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 0),
            child: ListTile(
              title: const Text('SETTINGS', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),),
              leading: const Icon(Icons.settings),
              iconColor: Colors.grey,
              onTap: (){
                //pop brawer
                Navigator.pop(context);

                //naviaget to settings page 
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsPage(),));
              },
            ),
          )

        ],
      ),
    );
  }
}