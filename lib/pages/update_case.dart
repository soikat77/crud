import 'package:flutter/material.dart';

class UpdateCase extends StatefulWidget {
  const UpdateCase({super.key});

  @override
  State<UpdateCase> createState() => _UpdateCaseState();
}

class _UpdateCaseState extends State<UpdateCase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Case'),
      ),
    );
  }
}
