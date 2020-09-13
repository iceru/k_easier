import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:k_easier/addCustomer.dart';
import 'package:k_easier/components/colors.dart';

class Customers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Customers',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: ButtonTheme(
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: mainColor),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Filter Data ',
                            style: TextStyle(color: mainColor, fontSize: 16),
                          ),
                          Icon(
                            Icons.filter_list,
                            color: mainColor,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: ButtonTheme(
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddCustomer()),
                        );
                      },
                      color: mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: mainColor),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Add Customer',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Icon(
                            Icons.supervisor_account,
                            color: Colors.white,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            tableCustomer(context)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add Customers',
        child: const Icon(Icons.add),
        backgroundColor: mainColor,
      ),
    );
  }
}

Widget buttonCustomer(colorButton, textColor, textButton, iconButton) =>
    Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: ButtonTheme(
        height: 50,
        child: RaisedButton(
          onPressed: () {},
          color: colorButton,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: mainColor),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textButton,
                style: TextStyle(color: textColor, fontSize: 16),
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

Widget tableCustomer(BuildContext context) {
  return StreamBuilder<QuerySnapshot>(
    stream: FirebaseFirestore.instance.collection('customers').snapshots(),
    builder: (context, snapshot) {
      if (snapshot.hasError) {
        return Text('Something wrong');
      }

      if (snapshot.connectionState == ConnectionState.waiting) {
        return Text('Waiting');
      }

      return DataTable(
          columns: const <DataColumn>[
            DataColumn(label: Text('ID')),
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Last Visit'))
          ],
          rows: snapshot.data.docs.map((DocumentSnapshot document) {
            return new DataRow(cells: [
              DataCell(Text(document.id)),
              DataCell(Text(document.data()['name'])),
              DataCell(Text(document.data()['last_visit'].toDate().toString())),
            ]);
          }).toList()
          // rows: const <DataRow>[
          //   DataRow(
          //     cells: <DataCell>[
          //       DataCell(Text('1')),
          //       DataCell(Text('Muhamad Hafiz')),
          //       DataCell(Text('20 Sept 2020'))
          //     ],
          //   ),
          //   DataRow(
          //     cells: <DataCell>[
          //       DataCell(Text('2')),
          //       DataCell(Text('Reza Mukhlis Q')),
          //       DataCell(Text('20 Sept 2020'))
          //     ],
          //   ),
          // ],
          );
    },
  );
}
