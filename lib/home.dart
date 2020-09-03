import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('K-Easier'),
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
