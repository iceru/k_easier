import 'package:flutter/material.dart';
import 'package:k_easier/transactions.dart';
import 'package:k_easier/customer.dart';
import 'package:k_easier/items.dart';
import 'package:k_easier/components/colors.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Container(
          color: mainColor,
          child: Column(
            children: [
              Row(
                children: [
                  Material(
                    color: mainColor,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Transactions(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: cardDash(Icons.receipt, 'Transaction'),
                      ),
                    ),
                  ),
                  Material(
                    color: mainColor,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Customers(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: cardDash(Icons.supervisor_account, 'Customers'),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Material(
                    color: mainColor,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Items(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: cardDash(Icons.shopping_basket, 'Items'),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: cardDash(Icons.show_chart, 'Reports'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget cardDash(icon, textCard) => Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(icon, color: mainColor, size: 40),
            ),
            Text(
              textCard,
              style: TextStyle(
                  color: mainColor, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
