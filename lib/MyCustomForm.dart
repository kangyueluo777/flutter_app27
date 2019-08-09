import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget{

  @override
  _MyCustomFormState createState() => _MyCustomFormState();

}

class _MyCustomFormState extends State<MyCustomForm>{
  final myController = TextEditingController();

  @override
  void initState(){
    super.initState();

    myController.addListener(_printLatestValue);
  }

  @override
  void dispose(){
    myController.dispose();
    super.dispose();
  }

  _printLatestValue(){
    print("Second text field: ${myController.text}");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Retrieve Text Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (text){
                print("First text field: $text");
              },
            ),
            TextField(
              controller: myController,
            ),
          ],
        ),
      ),
    );
  }

}