import 'package:flutter/material.dart';
import 'package:k_easier/dashboard.dart';

const grey = Colors.grey;

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(width: 1.0, color: Colors.white),
    borderRadius: BorderRadius.all(
      Radius.circular(5.0),
    ),
    boxShadow: [
      const BoxShadow(
        color: Color(0xffe0e0e0),
      ),
      const BoxShadow(
        color: Colors.white,
        spreadRadius: -3.0,
        blurRadius: 3.0,
      ),
    ],
  );
}

class Transactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Transactions'),
        backgroundColor: mainColor,
      ),
      body: Column(
        children: [
          buttonTransaction(
              mainColor, Colors.white, 'Add Transactions ', Icons.add_circle),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            padding: EdgeInsets.all(20),
            decoration: myBoxDecoration(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Last Transaction',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                itemTransaction('Item 1', '1', 'Rp400.000'),
                itemTransaction('Item 2', '1', 'Rp300.000'),
                Divider(
                  color: Colors.grey[300],
                  height: 2,
                  thickness: 2,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Rp700.000',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          buttonTransaction(
              Colors.white, mainColor, 'List of Transactions ', Icons.receipt),
        ],
      ),
    );
  }
}

Widget buttonTransaction(colorButton, textColor, textButton, iconButton) =>
    Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ButtonTheme(
        height: 50,
        child: RaisedButton(
          onPressed: () {},
          color: colorButton,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textButton,
                style: TextStyle(color: textColor, fontSize: 20),
              ),
              Icon(
                iconButton,
                color: textColor,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );

Widget itemTransaction(itemName, itemQty, itemPrice) => Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Image.asset(
                  'assets/store.png',
                  width: 60,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemName,
                    style: TextStyle(fontSize: 16),
                  ),
                  Row(
                    children: [
                      Text(
                        'Qty: ',
                        style: TextStyle(fontSize: 13),
                      ),
                      Text(itemQty),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Text(
            itemPrice,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
