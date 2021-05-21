import 'package:flutter/material.dart';
import 'AdminPin.dart';

class AdminOtp extends StatefulWidget {
  final String phone;
  AdminOtp(this.phone);
  @override
  State<StatefulWidget> createState() => _AdminOtpState();
  }

class _AdminOtpState extends State<AdminOtp>{
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  // String _verificationCode;
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();
  // String pin;
  final BoxDecoration pinPutDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(
      color: Colors.black,
    ),
  );
  final BoxDecoration textDecoration = BoxDecoration(
    color: Colors.teal,
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(
      color: Colors.teal,
    ),
  );

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                SizedBox(height: 20.0,),
                Image.asset(
                  "assets/images/logo.png",
                  height: 100,
                ),

                SizedBox(height: 208.0,),
                Text('Enter OTP',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),

                Text('OTP has been send to you registered phone no.',style: TextStyle(
                    fontSize: 16.0
                ),
                ),
                SizedBox(height: 20.0),
                Container(
                    padding: EdgeInsets.all(20.0),
                    // child: PinPut(
                    //   fieldsCount: 6,
                    //   textStyle: const TextStyle(fontSize: 25.0, color: Colors.white),
                    //   eachFieldWidth: 40.0,
                    //   eachFieldHeight: 55.0,
                    //   focusNode: _pinPutFocusNode,
                    //   controller: _pinPutController,
                    //   submittedFieldDecoration: textDecoration,
                    //   selectedFieldDecoration: pinPutDecoration,
                    //   followingFieldDecoration: pinPutDecoration,
                    //   pinAnimationType: PinAnimationType.fade,
                    //   onSubmit: (pin) async {
                        // try {
                        //   await FirebaseAuth.instance
                        //       .signInWithCredential(PhoneAuthProvider.getCredential(
                        //       verificationId: _verificationCode, smsCode: pin))
                        //       .then((value) async {
                        //     if (value.user != null) {
                        //       Navigator.pushAndRemoveUntil(
                        //           context,
                        //           MaterialPageRoute(builder: (context) => AdminPin()),
                        //               (route) => false);
                        //     }
                        //   });
                        // } catch (e) {
                        //   FocusScope.of(context).unfocus();
                        //   _scaffoldkey.currentState
                        //       .showSnackBar(SnackBar(content: Text('invalid OTP')));
                        // }
                //       },
                //     )
                ),
                SizedBox(height: 20.0,),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: RaisedButton(
                    child: Text('Verify'),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),
                    textColor: Colors.white,
                    onPressed: () async {
                      // pin=_pinPutController.text;
                      // try {
                      //   await FirebaseAuth.instance
                      //       .signInWithCredential(PhoneAuthProvider.getCredential(
                      //       verificationId: _verificationCode, smsCode: pin))
                      //       .then((value) async {
                      //     if (value.user != null) {
                      //       Navigator.pushAndRemoveUntil(
                      //           context,
                      //           MaterialPageRoute(builder: (context) => Homepage()),
                      //               (route) => true);
                      //     }
                      //   });
                      // } catch (e) {
                      //   FocusScope.of(context).unfocus();
                      //   _scaffoldkey.currentState
                      //       .showSnackBar(SnackBar(content: Text('invalid OTP')));
                      // }
                    },
                    color: Colors.teal.withOpacity(0.7),
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  ),
                )
              ]
          ),
        ),
      ),
    );
  }
  // _verifyPhone() async {
  //   await FirebaseAuth.instance.verifyPhoneNumber(
  //       phoneNumber: '+91${widget.phone}',
  //       verificationCompleted: (PhoneAuthCredential credential) async {
  //         await FirebaseAuth.instance
  //             .signInWithCredential(credential)
  //             .then((value) async {
  //           if (value.user != null) {
  //             Navigator.pushAndRemoveUntil(
  //                 context,
  //                 MaterialPageRoute(builder: (context) => AdminPin()),
  //                     (route) => false);
  //           }
  //         });
  //       },
  //       verificationFailed: (FirebaseAuthException e) {
  //         print(e.message);
  //       },
  //       codeSent: (String verficationID, int resendToken) {
  //         setState(() {
  //           // _verificationCode = verficationID;
  //         });
  //       },
  //       codeAutoRetrievalTimeout: (String verificationID) {
  //         setState(() {
  //           // _verificationCode = verificationID;
  //         });
  //       },
  //       timeout: Duration(seconds: 120));
  // }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _verifyPhone();
  }
}