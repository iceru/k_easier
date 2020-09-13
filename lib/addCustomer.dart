import 'package:flutter/material.dart';
import 'package:k_easier/components/colors.dart';

class AddCustomer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Customer'),
        backgroundColor: mainColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20, bottom: 10),
            child: Text(
              'Add Customer',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: mainColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                    borderSide: const BorderSide(color: mainColor, width: 2),
                  ),
                  labelText: 'Customer Name',
                  labelStyle: new TextStyle(color: mainColor)),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                    borderSide: const BorderSide(color: mainColor, width: 2),
                  ),
                  labelText: 'Customer Contact',
                  labelStyle: new TextStyle(color: mainColor)),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                    borderSide: const BorderSide(color: mainColor, width: 2),
                  ),
                  labelText: 'Customer Address',
                  labelStyle: new TextStyle(color: mainColor)),
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: RaisedButton(
                      onPressed: () {},
                      color: mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: mainColor),
                      ),
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: mainColor),
                    ),
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: mainColor),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
