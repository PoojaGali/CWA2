import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubmitScreen extends StatelessWidget {
  static const routeName = '/SubmitScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Book Hours'),
      ),
      body: Text(
        '\nYou are good to go!\n',
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
