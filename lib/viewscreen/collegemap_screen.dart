import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CollegeMapScreen extends StatelessWidget {
  static const routeName = '/CollegeMapScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('College Map'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(26.0, 50.0, 20.0, 0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 600.0,
                  child: Image.asset('images/CollegeMap.PNG'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
