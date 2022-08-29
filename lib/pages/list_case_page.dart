import 'package:crud/pages/update_page.dart';
import 'package:flutter/material.dart';

class ListCasePage extends StatefulWidget {
  ListCasePage({Key? key}) : super(key: key);

  @override
  State<ListCasePage> createState() => _ListCasePageState();
}

class _ListCasePageState extends State<ListCasePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Table(
          border: TableBorder.all(),
          // columnWidths: const <int, TableColumnWidth>{
          //   0: FixedColumnWidth(140),
          // },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
              children: [
                TableCell(
                  child: Container(
                    color: Colors.blue[100],
                    child: const Center(child: Text('Law')),
                  ),
                ),
                TableCell(
                  child: Container(
                    color: Colors.blue[100],
                    child: const Center(child: Text('Date')),
                  ),
                ),
                // TableCell(
                //   child: Container(
                //     color: Colors.blue[100],
                //     child: const Center(child: Text('Location')),
                //   ),
                // ),
                // TableCell(
                //   child: Container(
                //     color: Colors.blue[100],
                //     child: const Center(child: Text('Cases')),
                //   ),
                // ),
                // TableCell(
                //   child: Container(
                //     color: Colors.blue[100],
                //     child: const Center(child: Text('Accuised')),
                //   ),
                // ),
                // TableCell(
                //   child: Container(
                //     color: Colors.blue[100],
                //     child: const Center(child: Text('Fine-1')),
                //   ),
                // ),
                // TableCell(
                //   child: Container(
                //     color: Colors.blue[100],
                //     child: const Center(child: Text('Fine-2')),
                //   ),
                // ),
                // TableCell(
                //   child: Container(
                //     color: Colors.blue[100],
                //     child: const Center(child: Text('Fine-3')),
                //   ),
                // ),
                TableCell(
                  child: Container(
                    color: Colors.blue[100],
                    child: const Center(child: Text('Action')),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                TableCell(
                  child: Container(
                    child: const Center(
                        child: Text('সড়ক পরিবহন আইন ২০১৮ এর ৭৫ ধারা')),
                  ),
                ),
                TableCell(
                  child: Container(
                    child: const Center(child: Text('২৯.০৮.২০২২')),
                  ),
                ),
                TableCell(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => UpdatePage(),
                              ),
                            ),
                          },
                          icon: const Icon(Icons.edit),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
