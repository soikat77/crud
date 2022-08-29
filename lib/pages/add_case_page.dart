import 'package:flutter/material.dart';

class AddCasePage extends StatefulWidget {
  AddCasePage({Key? key}) : super(key: key);

  @override
  State<AddCasePage> createState() => _AddCasePageState();
}

class _AddCasePageState extends State<AddCasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a new case'),
      ),
      body: const Text('Case Adding Page'),
    );
  }
}
