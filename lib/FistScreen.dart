import 'package:flutter/material.dart';
import 'package:safeoutsconsumerprod/profile/SettingsPage.dart';

import 'AdminOtp.dart';
import 'Auth.dart';
import 'admin_homepage.dart';


class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // final FirebaseAuth auth = FirebaseAuth.instance;
    // String userData() {
      // final User user = auth.currentUser;
      // final uid = user.uid;
      // return uid;
    // }
    // TODO: implement build
    return Scaffold(
      body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/logo.png",
                height: 200,
                width: 200,
              ),
              SizedBox(height: 20),
              Text('SAFE OUTS',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('POWERED BY 1891',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 60),
              SizedBox(
                width: 300,
                height: 60,
                child: RaisedButton(
                  child: Text('Sign in with Phone no.'),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (BuildContext context) => NewAdmin()
                        )
                    );
                  },
                  color: Colors.teal.withOpacity(0.7),
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                ),

              ),
              SizedBox(height: 30),
              SizedBox(
                width: 300,
                height: 60,
                child: RaisedButton(
                  child: Text('Sign in with Google.'),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (BuildContext context) => Home()
                        )
                    );
                  },
                  color: Colors.teal.withOpacity(0.7),
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                ),

              ),
              SizedBox(height: 30),

              SizedBox(
                width: 300,
                height: 60,
                child: RaisedButton(
                  child: Text('Sign in with Facebook.'),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (BuildContext context) => Home()
                        )
                    );
                  },
                  color: Colors.teal.withOpacity(0.7),
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                ),

              ),
            ],
          )
      ),
    );
  }

}