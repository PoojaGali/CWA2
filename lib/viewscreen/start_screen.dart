import 'package:cwa2/model/course.dart';
import 'package:cwa2/viewscreen/collegemap_screen.dart';
import 'package:cwa2/viewscreen/deadline_screen.dart';
import 'package:cwa2/viewscreen/parkingmap_screen.dart';
import 'package:cwa2/viewscreen/signin_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cwa2/model/event.dart';
import 'package:cwa2/viewscreen/events_screen.dart';
import 'package:cwa2/viewscreen/workinghours_screen.dart';
import 'package:cwa2/viewscreen/classschedule_screen.dart';

class StartScreen extends StatefulWidget {
  static const routeName = '/startScreen';

  @override
  State<StatefulWidget> createState() {
    return _StartScreenState();
  }
}

class _StartScreenState extends State<StartScreen> {
  late _Controller con;

  @override
  void initState() {
    super.initState();
    con = _Controller(this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: Text('UCO'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/College.JPG"),
            fit: BoxFit.cover,
          ),
        ),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: con.navigate2WorkingScreenDemo,
              child: Text('Book Working Hours',
                  style: Theme.of(context).textTheme.button),
            ),
            ElevatedButton(
              onPressed: con.navigate2EventDemo,
              child: Text('Events of the day',
                  style: Theme.of(context).textTheme.button),
            ),
            ElevatedButton(
              onPressed: con.navigate2ClassScheduleDemo,
              child: Text('Class Schedule',
                  style: Theme.of(context).textTheme.button),
            ),
            ElevatedButton(
              onPressed: con.navigate2DeadlineDemo,
              child:
                  Text('Deadlines', style: Theme.of(context).textTheme.button),
            ),
            ElevatedButton(
              onPressed: con.navigate2SignInDemo,
              child: Text('View Profile',
                  style: Theme.of(context).textTheme.button),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class _Controller {
  late _StartScreenState state;
  _Controller(this.state);

  void navigate2WorkingScreenDemo() {
    Navigator.pushNamed(state.context, WorkingHoursScreen.routeName);
  }

  void navigate2EventDemo() {
    Navigator.pushNamed(
      state.context,
      EventScreen.routeName,
      arguments: eventList,
    );
  }

  void navigate2ClassScheduleDemo() {
    Navigator.pushNamed(
      state.context,
      ClassScheduleScreen.routeName,
      arguments: courseList,
    );
  }

  void navigate2DeadlineDemo() {
    Navigator.pushNamed(
      state.context,
      DeadlineScreen.routeName,
      arguments: courseList,
    );
  }

  void navigate2SignInDemo() {
    Navigator.pushNamed(
      state.context,
      SignInScreen.routeName,
    );
  }
}
