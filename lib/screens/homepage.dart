import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SettingsPage.dart';

class Homepage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SettingsPage()),
              );
              SettingsPage();
            },
            child: Image.asset(
              "assets/images/logo.png",
            ),
          ),
        ),
      ),
      body: Center(
        child: Text('Restaurants nearby'),
      ),

    );
  }
}
