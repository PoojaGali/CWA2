import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  final String errorMessage;
  ErrorScreen(this.errorMessage);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Internal Error'),
      ),
      body: Text(
        'Internal error has occured\nRelaunch the app\n$errorMessage',
        style: TextStyle(
          color: Colors.red,
          fontSize: 20.0,
        ),
      ),
    );
  }
}
