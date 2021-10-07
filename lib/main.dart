import 'package:cwa2/model/course.dart';
import 'package:cwa2/viewscreen/collegemap_screen.dart';
import 'package:cwa2/viewscreen/deadline_screen.dart';
import 'package:cwa2/viewscreen/main_screen.dart';
import 'package:cwa2/viewscreen/parkingmap_screen.dart';
import 'package:cwa2/viewscreen/submit_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cwa2/Viewscreen/start_screen.dart';
import 'package:cwa2/model/event.dart';
import 'package:cwa2/model/users.dart';
import 'package:cwa2/viewscreen/events_screen.dart';
import 'package:cwa2/viewscreen/workinghours_screen.dart';
import 'package:cwa2/viewscreen/signin_screen.dart';
import 'package:cwa2/viewscreen/classschedule_screen.dart';
import 'package:cwa2/viewscreen/profile_screen.dart';

import 'viewscreen/error_screen.dart';
import 'viewscreen/userhome_screen.dart';

void main() {
  runApp(Cwa2App());
}

class Cwa2App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MainScreen.routeName,
      routes: {
        MainScreen.routeName: (context) => MainScreen(),
        StartScreen.routeName: (context) => StartScreen(),
        SubmitScreen.routeName: (context) => SubmitScreen(),
        ParkingMapScreen.routeName: (context) => ParkingMapScreen(),
        CollegeMapScreen.routeName: (context) => CollegeMapScreen(),
        DeadlineScreen.routeName: (context) => DeadlineScreen(),
        WorkingHoursScreen.routeName: (context) => WorkingHoursScreen(),
        EventScreen.routeName: (context) {
          Object? args = ModalRoute.of(context)?.settings.arguments;
          if (args != null)
            return EventScreen(args as List<Event>);
          else
            return ErrorScreen('argument is null at EventScreen');
        },
        ClassScheduleScreen.routeName: (context) {
          Object? args = ModalRoute.of(context)?.settings.arguments;
          if (args != null)
            return ClassScheduleScreen(args as List<Course>);
          else
            return ErrorScreen('argument is null at ClassScheduleScreen');
        },
        SignInScreen.routeName: (context) => SignInScreen(),
        UserHomeScreen.routeName: (context) {
          Object? args = ModalRoute.of(context)?.settings.arguments;
          if (args != null)
            return UserHomeScreen(args as Users);
          else
            return ErrorScreen('Argument is null at UserHomeScreen');
        },
        ProfileScreen.routeName: (context) {
          Object? args = ModalRoute.of(context)?.settings.arguments;
          if (args != null)
            return ProfileScreen(args as Users);
          else
            return ErrorScreen('Argument is null at ProfileScreen');
        },
      },
    );
  }
}
