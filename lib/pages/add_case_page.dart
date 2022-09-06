import 'package:flutter/material.dart';

class AddCasePage extends StatefulWidget {
  const AddCasePage({Key? key}) : super(key: key);

  @override
  State<AddCasePage> createState() => _AddCasePageState();
}

class _AddCasePageState extends State<AddCasePage> {
  final _formKey = GlobalKey<FormState>();

  var law = "";
  var date = "";

  //text Controller
  final nameController = TextEditingController();
  final dateController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    dateController.dispose();
  }

  addUser() {
    //
  }

  clearText() {
    nameController.clear();
    dateController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a new case'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
          ),
          child: ListView(
            children: [
              const SizedBox(
                height: 30.0,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(
                      fontSize: 18.0,
                    ),
                    border: OutlineInputBorder(),
                    errorStyle: TextStyle(color: Colors.red),
                  ),
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a name';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    labelText: 'Date',
                    labelStyle: TextStyle(
                      fontSize: 18.0,
                    ),
                    border: OutlineInputBorder(),
                    errorStyle: TextStyle(color: Colors.red),
                  ),
                  controller: dateController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a date';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          law = nameController.text;
                          date = dateController.text;
                          addUser();
                          clearText();
                        });
                      }
                    },
                    child: const Text('Submit'),
                  ),
                  ElevatedButton(
                    onPressed: () => {clearText()},
                    child: const Text('reset'),
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
