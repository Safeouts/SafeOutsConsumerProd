import 'package:flutter/material.dart';
import 'package:safeoutsconsumerprod/screens/homepage.dart';


class SignInPage extends StatelessWidget {
  // const SignInPage({
  //   Key key,
  //   @required this.manager,
  //   @required this.isLoading,
  // }) : super(key: key);
  // final SignInManager manager;
  // final bool isLoading;
  //
  // static const Key emailPasswordKey = Key('email-password');

  // static Widget create(BuildContext context) {
  //   final auth = Provider.of<AuthBase>(context, listen: false);
  //   return ChangeNotifierProvider<ValueNotifier<bool>>(
  //     create: (_) => ValueNotifier<bool>(false),
  //     child: Consumer<ValueNotifier<bool>>(
  //       builder: (_, isLoading, __) => Provider<SignInManager>(
  //         create: (_) => SignInManager(auth: auth, isLoading: isLoading),
  //         child: Consumer<SignInManager>(
  //           builder: (_, manager, __) =>
  //               SignInPage(manager: manager, isLoading: isLoading.value),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  void _showSignInError(BuildContext context, Exception exception) {
    // if (exception is FirebaseException &&
    //     exception.code == 'ERROR_ABORTED_BY_USER')
    {
      return;
    }
    // showExceptionAlertDialog(
    //   context,
    //   title: 'Sign in failed',
    //   exception: exception,
    // );
  }

  // Future<void> _signInAnonymously(BuildContext context) async {
  //   try {
  //     await manager.signInAnonymously();
  //   } on Exception catch (e) {
  //     _showSignInError(context, e);
  //   }
  // }

  // Future<void> _signInWithGoogle(BuildContext context) async {
  //   try {
  //     await manager.signInWithGoogle();
  //   } on Exception catch (e) {
  //     _showSignInError(context, e);
  //   }
  // }

  // Future<void> _signInWithFacebook(BuildContext context) async {
  //   try {
  //     await manager.signInWithFacebook();
  //   } on Exception catch (e) {
  //     _showSignInError(context, e);
  //   }
  // }

  // void _signInWithEmail(BuildContext context) {
  //   Navigator.of(context).push(
  //     MaterialPageRoute<void>(
  //       fullscreenDialog: true,
  //       builder: (context) => EmailSignInPage(),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContent(context),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          SizedBox(height: 48.0),
          Row(children: <Widget>[
            Expanded(
              child: new Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Image.asset('assets/images/second.png'),

              ),
            ),
            // Text("OR"),
          ]),
          SizedBox(
            height: 50.0,
            // child: _buildHeader(),
          ),
          RaisedButton(
            child: Text('Phone Login'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Homepage()),
              );
            },
          ),
          // SocialSignInButton(
          //   assetName: 'images/phone-logo.png',
          //   text: 'Sign in with Phone no.',
          //   textColor: Colors.white,
          //   color: Colors.teal,
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => AdminLogin()),
          //     );
          //   },
          //   // onPressed: isLoading ? null : () => _signInWithFacebook(context),
          // ),
          SizedBox(height: 10.0),
          Row(children: <Widget>[
            Expanded(
              child: new Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Divider(
                    color: Colors.grey,
                    height: 36,
                    thickness: 1,
                  )),
            ),
            Text("OR"),
            Expanded(
              child: new Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Divider(
                    color: Colors.black,
                    height: 36,
                  )),
            ),
          ]),
          SizedBox(height: 10.0),

          // SocialSignInButton(
          //   assetName: 'images/google-logo.png',
          //   text: 'Sign in with Google',
          //   textColor: Colors.black,
          //   color: Colors.white,
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => Homepage()),
          //     );
          //   },
          //   // onPressed: isLoading ? null : () => _signInWithGoogle(context),
          // ),
          SizedBox(height: 8.0),
          RaisedButton(
            child: Text('Google Login'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Homepage()),
              );
            },          ),
          // SocialSignInButton(
          //   assetName: 'images/facebook-logo.png',
          //   text: 'Sign in with Facebook',
          //   textColor: Colors.white,
          //   color: Color(0xFF4285F4),
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => Homepage()),
          //     );
          //   },
          //   // onPressed: isLoading ? null : () => _signInWithFacebook(context),
          // ),
          // SizedBox(height: 8.0),
          // SignInButton(
          //   // key: emailPasswordKey,
          //   text: 'Sign in with email',
          //   textColor: Colors.white,
          //   color: Colors.teal[700],
          //   // onPressed: isLoading ? null : () => _signInWithEmail(context),
          // ),
          SizedBox(height: 8.0),
          // Text(
          //   'or',
          //   style: TextStyle(fontSize: 14.0, color: Colors.black87),
          //   textAlign: TextAlign.center,
          // ),
          SizedBox(height: 8.0),
          RaisedButton(
            child: Text('Facebook Login'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Homepage()),
              );
            },          ),
          // SignInButton(
          //   text: 'Sign in with Phone',
          //   textColor: Colors.black,
          //   color: Colors.lime[300],
          //   // onPressed: isLoading ? null : () => _signInAnonymously(context),
          // ),
        ],
      ),
    );
  }

  // Widget _buildHeader() {
    // if (isLoading) {
    //   return Center(
    //     child: CircularProgressIndicator(),
    //   );
    // }
    // return Text(
    //   'Sign in',
    //   textAlign: TextAlign.center,
    //   style: TextStyle(
    //     fontSize: 32.0,
    //     fontWeight: FontWeight.w600,
    //   ),
    // );
  // }
}
