import 'package:flutter/material.dart';
import 'add_case_page.dart';
import 'list_case_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('C R U D'),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddCasePage(),
                  ),
                )
              },
              style: ElevatedButton.styleFrom(primary: Colors.blue[900]),
              child: const Text(
                'Add',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
      body: ListCasePage(),
    );
  }
}
