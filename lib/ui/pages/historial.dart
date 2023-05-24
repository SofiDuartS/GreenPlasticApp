import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import '../../constants.dart';
import 'cotizacion.dart';
import 'home.dart';

class HistorialPage extends StatefulWidget {
  @override
  _HistorialPageState createState() => _HistorialPageState();
}

class _HistorialPageState extends State<HistorialPage> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  TextEditingController _totalController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: Drawer(
        backgroundColor: Color3,
        elevation: 0,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            SizedBox(
                width: 250,
                height: 35,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Catálogo',
                      style: Theme.of(context).textTheme.labelLarge,
                    ))),
            SizedBox(
              height: 40,
            ),
            SizedBox(
                width: 250,
                height: 35,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(CotizacionPage());
                    },
                    child: Text(
                      'Cotización',
                      style: Theme.of(context).textTheme.labelLarge,
                    ))),
            SizedBox(
              height: 40,
            ),
            SizedBox(
                width: 250,
                height: 35,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(HistorialPage());
                    },
                    child: Text(
                      'Historial',
                      style: Theme.of(context).textTheme.labelLarge,
                    ))),
            SizedBox(
              height: 40,
            ),
            SizedBox(
                width: 250,
                height: 70,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Formulario \n contacto',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.labelLarge,
                    ))),
            Spacer(),
            SizedBox(
                /*width: 35,
                height: 35,*/
                child: ElevatedButton(
              onPressed: () {
                Get.to(HomePage());
              },
              child: Icon(Icons.logout),
            )),
            SizedBox(
              height: 35,
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.0),
            Expanded(
              child: Stack(
                children: [
                  IconButton(
                    onPressed: () {
                      _globalKey.currentState?.openDrawer();
                    },
                    icon: Icon(Icons.menu),
                    color: Color3,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Historial',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                        Column(
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ExpansionTile(
                                tilePadding: EdgeInsets.all(0),
                                title: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 15),
                                  child: Row(
                                    children: [
                                      Icon(Icons.history, color: Colors.black),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: Text(
                                          'Historial',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                children: [
                                  DataTable(
                                    sortAscending: true,
                                    sortColumnIndex: 1,
                                    dataRowHeight: 40,
                                    showBottomBorder: false,
                                    columns: [
                                      DataColumn(
                                          label: Text('ID'), numeric: true),
                                      DataColumn(label: Text('Descripción')),
                                      DataColumn(
                                          label: Text('Total'), numeric: true),
                                    ],
                                    rows: [
                                      DataRow(
                                        cells: [
                                          DataCell(Text('1',
                                              textAlign: TextAlign.right)),
                                          DataCell(Text('Fancy Product')),
                                          DataCell(Text(r'$ 199.99',
                                              textAlign: TextAlign.right)),
                                        ],
                                      ),
                                      DataRow(
                                        cells: [
                                          DataCell(Text('2',
                                              textAlign: TextAlign.right)),
                                          DataCell(Text('Another Product')),
                                          DataCell(Text(r'$ 79.00',
                                              textAlign: TextAlign.right)),
                                        ],
                                      ),
                                      DataRow(
                                        cells: [
                                          DataCell(Text('3',
                                              textAlign: TextAlign.right)),
                                          DataCell(Text('Really Cool Stuff')),
                                          DataCell(Text(r'$ 9.99',
                                              textAlign: TextAlign.right)),
                                        ],
                                      ),
                                      DataRow(
                                        cells: [
                                          DataCell(Text('4',
                                              textAlign: TextAlign.right)),
                                          DataCell(
                                              Text('Last Product goes here')),
                                          DataCell(Text(r'$ 19.99',
                                              textAlign: TextAlign.right)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ExpansionTile(
                                tilePadding: EdgeInsets.all(0),
                                title: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 15),
                                  child: Row(
                                    children: [
                                      Icon(Icons.contact_page,
                                          color: Colors.black),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: Text(
                                          'Contactos',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                children: [
                                  Text('Contactos'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}