import 'package:flutter/material.dart';
import 'package:k_easier/components/colors.dart';

const mainColor = Color(0xff56C596);

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: titleSection(context),
        ),
      ),
    );
  }
}

Widget titleSection(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(top: 20),
    color: mainColor,
    alignment: Alignment(0.0, 0.0),
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(30),
          child: (Text(
            'K-Easier',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 32,
            ),
          )),
        ),
        Image.asset(
          'assets/store.png',
          width: 220,
        ),
        Container(
            margin: const EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: signIn(context)),
        register,
      ],
    ),
  );
}

Widget signIn(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(30),
    child: Column(
      textDirection: TextDirection.ltr,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Text(
            'Sign In to your Account',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: mainColor,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: new Theme(
            data: new ThemeData(
              primaryColor: Color(0xff56C596),
              primaryColorDark: Color(0xff56C596),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                  borderSide: const BorderSide(color: mainColor),
                ),
                labelText: 'Your Email',
                labelStyle: new TextStyle(color: mainColor),
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: TextField(
            decoration: InputDecoration(
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                  borderSide: const BorderSide(color: mainColor, width: 2),
                ),
                labelText: 'Your Password',
                labelStyle: new TextStyle(color: mainColor)),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 5),
          child: ButtonTheme(
            minWidth: double.infinity,
            height: 50,
            child: RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              color: mainColor,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Sign In',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        )
      ],
    ),
  );
}

Widget register = Center(
  child: Container(
      alignment: Alignment(0, 0),
      color: secondaryColor,
      padding: const EdgeInsets.symmetric(vertical: 20),
      margin: const EdgeInsets.only(top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Dont have an Account?',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            ' Register',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )
        ],
      )),
);
