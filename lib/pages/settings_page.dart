import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 60),
          child: Text('S E T T I N G S ', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary, 
        borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.all(25),
        child: Row(
          children: [
            // dark mode
            const Text("Dark mode"),

            //switch
            CupertinoSwitch(
                value:
                Provider.of<ThemeProvider>(context, listen: false).isDarkMode,
               onChanged: (value) => 
                Provider.of<ThemeProvider>(context, listen: false)
                .toggleTheme())
          ],
        ),
      ),
    );
  }
}