import 'package:flutter/material.dart';
import 'package:safeoutsconsumerprod/profile/SettingsPage.dart';

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SettingsPage()),
            ),
            child: Image.asset(
              "assets/images/logo.png",
            ),
          ),
        ),
        title: Text(''),
      ),
      body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 10, left: 20),
                    ),
                    SizedBox(width: 40,),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left:15.0,right: 15.0,top: 15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child:
                new ListTile(
                  // leading: new Icon(Icons.search, color: Colors.grey, ),
                  title: new TextField(
                    // controller: controller,
                    decoration: new InputDecoration(
                      hintText: 'Search Restaurant...', border: InputBorder.none,
                      // fontWeight: FontWeight.bold,
                      // color: Colors.black54,
                      hintStyle: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        // fontSize: 25,
                      ),
                    ),
                    // onChanged: onSearchTextChanged,
                  ),
                  trailing: new IconButton(icon: new Icon(Icons.search, color: Colors.grey,), onPressed: () {
                    // controller.clear();
                    // onSearchTextChanged('');
                  },
                  ),

                ),

              ),

            ],
          )
      ),
    );
  }
}
