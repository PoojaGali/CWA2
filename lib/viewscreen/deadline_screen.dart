import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeadlineScreen extends StatelessWidget {
  static const routeName = '/DeadlineScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Deadlines'),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200.0,
                width: 300.0,
                color: Colors.amberAccent,
              ),
              Positioned(
                bottom: 10.0,
                right: 10.0,
                child: Icon(
                  Icons.lock_clock,
                  size: 200.0,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.red[800],
                  margin: EdgeInsets.only(right: 5.0),
                  child: Text(
                    'Semester Fee',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ),
            ],
          ),
          Text(
            '\nPay before 11:59 PM today\n',
            style: Theme.of(context).textTheme.headline6,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.green[800],
                  margin: EdgeInsets.only(right: 5.0),
                  child: Text(
                    'Class Enrollment',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ),
            ],
          ),
          Text(
            '\nVisit uconnect.uco.edu to enroll into classes\n',
            style: Theme.of(context).textTheme.headline6,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.blue[800],
                  margin: EdgeInsets.only(right: 5.0),
                  child: Text(
                    'Parking Permit',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ),
            ],
          ),
          Text(
            '\nLast day to buy parking permit',
            style: Theme.of(context).textTheme.headline6,
          ),
        ],
      ),
    );
  }
}
