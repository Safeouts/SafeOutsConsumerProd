import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AdminOtp.dart';

class AdminLogin extends StatelessWidget{
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:<Widget> [
              SizedBox(height: 50.0),

              Image.asset(
                "assets/images/logo.png",
                height: 100,
              ),
              SizedBox(height: 200.0),

              Text('Enter your Phone no.',style: TextStyle(
                  fontSize: 20.0
              ),

              ),
              SizedBox(height: 20.0),
              // width: double.infinity,
              SizedBox(
                width: 400,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                          color: Colors.teal.withOpacity(0.7),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(14.0),
                              bottomLeft: Radius.circular(14.0)
                          )
                      ),
                      child: Center(
                        child: Text("+91",
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      constraints: const BoxConstraints(
                          maxWidth: 300
                      ),
                      child: CupertinoTextField(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.teal.withOpacity(0.3),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(14.0),
                            bottomRight: Radius.circular(14.0)
                          ),
                        ),
                        controller: phoneController,
                        clearButtonMode: OverlayVisibilityMode.editing,
                        keyboardType: TextInputType.phone,
                        maxLines: 1,
                        placeholder: 'Enter phone number ',
                      ),
                    ),

                  ],
                ),

              ),
              SizedBox(height: 30.0,),
              SizedBox(
                    width: 200,
                    height: 60,
                    child: RaisedButton(
                    child: Text('Generate OTP'),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AdminOtp(phoneController.text)));
                  },
                  color: Colors.teal.withOpacity(0.7),
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                ),
              )
            ],
          ),
        )
      )
    );
  }
  
}