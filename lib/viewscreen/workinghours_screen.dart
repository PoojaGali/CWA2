import 'package:cwa2/viewscreen/submit_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorkingHoursScreen extends StatefulWidget {
  static const routeName = '/workingHoursScreen';

  @override
  State<StatefulWidget> createState() {
    return _WorkingHoursState();
  }
}

class _WorkingHoursState extends State<WorkingHoursScreen> {
  int moneyearned = 0;
  late _Controller con;
  int hours = 0;
  @override
  void initState() {
    super.initState();
    con = _Controller(this);
  }

  void render(fn) {
    setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Working hours per week'),
      ),
      body: Column(
        children: [
          Text(
            'No.of Hours = $hours',
            style: Theme.of(context).textTheme.headline4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.teal,
                child: IconButton(
                  iconSize: 100.0,
                  onPressed: con.countUp,
                  icon: Icon(
                    Icons.plus_one,
                  ),
                ),
              ),
              SizedBox(
                width: 50.0,
              ),
              Container(
                color: Colors.blue,
                child: IconButton(
                  iconSize: 100.0,
                  onPressed: con.countDown,
                  icon: Icon(
                    Icons.exposure_minus_1,
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: con.moneyEarned,
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class _Controller {
  late _WorkingHoursState state;
  _Controller(this.state);

  void countUp() {
    state.render(() {
      ++state.hours;
    });
  }

  void moneyEarned() {
    state.render(() {
      Navigator.pushNamed(
        state.context,
        SubmitScreen.routeName,
      );
    });
  }

  void countDown() {
    state.render(() {
      --state.hours;
    });
  }
}
