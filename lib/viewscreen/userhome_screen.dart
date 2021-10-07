import 'package:flutter/material.dart';
import 'package:cwa2/model/users.dart';
import 'package:cwa2/viewscreen/profile_screen.dart';

class UserHomeScreen extends StatefulWidget {
  static const routeName = '/userHomeScreen';
  final Users userRecord;
  UserHomeScreen(this.userRecord);
  @override
  State<StatefulWidget> createState() {
    return _UserHomeState();
  }
}

class _UserHomeState extends State<UserHomeScreen> {
  late _Controller con;

  @override
  void initState() {
    super.initState();
    con = _Controller(this);
  }

  void render(fn) => setState(fn);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text('User Home'),
        ),
        drawer: Drawer(
            child: ListView(
          children: [
            DrawerHeader(child: Text(widget.userRecord.email)),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: con.profile,
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Sign Out'),
              onTap: con.signOut,
            ),
          ],
        )),
        body: Column(
          children: [
            Text(
              'Name:${widget.userRecord.name}',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              'Email:${widget.userRecord.email}',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }
}

class _Controller {
  late _UserHomeState state;
  _Controller(this.state);

  void signOut() {
    Navigator.of(state.context).pop(); //close the drawer
    Navigator.of(state.context).pop(); //pops out HomeScreen
  }

  void profile() async {
    await Navigator.pushNamed(
      state.context,
      ProfileScreen.routeName,
      arguments: state.widget.userRecord,
    );
    Navigator.of(state.context).pop(); //close the drawer
  }
}
