import 'package:flutter/material.dart';
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
        backgroundColor: mainColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buttonCustomer(
                    Colors.white, mainColor, 'Filter Data ', Icons.filter_list),
                buttonCustomer(mainColor, Colors.white, 'Add Customer ',
                    Icons.supervisor_account)
              ],
            ),
            tableCustomer
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

Widget tableCustomer = Container(
  child: DataTable(
    columns: const <DataColumn>[
      DataColumn(label: Text('ID')),
      DataColumn(label: Text('Name')),
      DataColumn(label: Text('Last Visit'))
    ],
    rows: const <DataRow>[
      DataRow(
        cells: <DataCell>[
          DataCell(Text('1')),
          DataCell(Text('Muhamad Hafiz')),
          DataCell(Text('20 Sept 2020'))
        ],
      ),
      DataRow(
        cells: <DataCell>[
          DataCell(Text('2')),
          DataCell(Text('Reza Mukhlis Q')),
          DataCell(Text('20 Sept 2020'))
        ],
      ),
    ],
  ),
);
