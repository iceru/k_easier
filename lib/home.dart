import 'package:flutter/material.dart';
import 'package:k_easier/signIn.dart';

const mainColor = Color(0xff56C596);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('K-Easier'),
        backgroundColor: mainColor,
        centerTitle: true,
        elevation: 4,
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignIn()));
          },
          child: Text('Sign In'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('K-Easier'),
            Text('by CodeOmnia'),
            Text('Freakrault, Iceru, ReMuQu'),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('K-Easier'),
            Text('by CodeOmnia'),
            Text('Freakrault, Iceru, ReMuQu'),
          ],
        ),
      ),
    );
  }
}
