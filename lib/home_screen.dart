import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                WidgetIconBiking(),
                WidgetLabelContinueWith(),
                WidgetLoginViaSocialMedia(),
                WidgetLabelSignInWithEmail(),
                WidgetTextFieldUsername(),
                WidgetTextFieldPassword(),
                WidgetLoginButton(),
                WidgetResetPasswordButton(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              bottom: mediaQuery.padding.bottom > 0
                  ? mediaQuery.padding.bottom
                  : 16.0,
            ),
            child: Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Don\'t have an account? ',
                      style: Theme.of(context).textTheme.caption,
                    ),
                    TextSpan(
                      text: 'Sign up here',
                      style: Theme.of(context).textTheme.caption.merge(
                            TextStyle(
                              color: Color(0xFF6C63FF),
                            ),
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}

class WidgetIconBiking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Padding(
      padding: EdgeInsets.only(
        left: 16.0,
        top: mediaQuery.padding.top > 0 ? mediaQuery.padding.top : 16.0,
        right: 16.0,
      ),
      child: Stack(
        children: <Widget>[
          Center(
            child: Image.asset(
              'assets/images/img_biking.png',
              width: mediaQuery.size.width / 1.5,
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Center(
              child: Text(
                'Biking App',
                style: TextStyle(
                    fontSize: 24.0,
                    fontFamily: 'NanumGothic',
                    color: Colors.black54),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WidgetLabelContinueWith extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Center(
        child: Text(
          'Continue with',
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}

class WidgetLoginViaSocialMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 8.0, right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Color(0xFFF2F2F2),
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Icon(
              FontAwesomeIcons.facebookF,
              size: 18.0,
              color: Colors.black54,
            ),
          ),
          SizedBox(width: 32.0),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Color(0xFFF2F2F2),
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Icon(
              FontAwesomeIcons.google,
              size: 18.0,
              color: Colors.black54,
            ),
          ),
          SizedBox(width: 32.0),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Color(0xFFF2F2F2),
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Icon(
              FontAwesomeIcons.twitter,
              size: 18.0,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}

class WidgetLabelSignInWithEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: Center(
        child: Text(
          'Or sign in with email',
          style: TextStyle(color: Colors.black54),
        ),
      ),
    );
  }
}

class WidgetTextFieldUsername extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Email Address / Username',
          contentPadding: EdgeInsets.all(16.0),
        ),
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }
}

class WidgetTextFieldPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Password',
          contentPadding: EdgeInsets.all(16.0),
        ),
        keyboardType: TextInputType.text,
        obscureText: true,
      ),
    );
  }
}

class WidgetLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
      child: RaisedButton(
        child: Text(
          'LOG IN',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'NanumGothic',
            fontWeight: FontWeight.bold,
          ),
        ),
        color: Color(0xFF6C63FF),
        onPressed: () {
          // TODO: do something in here
        },
      ),
    );
  }
}

class WidgetResetPasswordButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Wrap(
        children: <Widget>[
          Center(
            child: FlatButton(
              child: Text(
                'RESET PASSWORD',
                style: TextStyle(
                  color: Color(0xFF6C63FF),
                  fontFamily: 'NanumGothic',
                ),
              ),
              onPressed: () {
                // TODO: do something in here
              },
            ),
          ),
        ],
      ),
    );
  }
}
