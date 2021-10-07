import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cwa2/model/users.dart';
import 'package:cwa2/viewscreen/userhome_screen.dart';
import 'package:cwa2/viewscreen/view/myutil.dart';

class SignInScreen extends StatefulWidget {
  static const routeName = '/FormDemoScreen';
  @override
  State<StatefulWidget> createState() {
    return _SignInState();
  }
}

class _SignInState extends State<SignInScreen> {
  late _Controller con;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    con = _Controller(this);
  }

  void render(fn) => setState(fn);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text('Welcome'),
        ),
        body: Form(
          key: formkey,
          child: Column(
            children: [
              Text(
                'Sign In, Please!',
                style: Theme.of(context).textTheme.headline5,
              ),
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.email), hintText: 'Enter Email'),
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                validator: con.validateEmail,
                onSaved: con.saveEmail,
              ),
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.lock), hintText: 'Enter Password'),
                obscureText: true,
                autocorrect: false,
                validator: con.validatePassword,
                onSaved: con.savePassword,
              ),
              ElevatedButton(
                onPressed: con.signIn,
                child: Text('Submit'),
              ),
            ],
          ),
        ));
  }
}

class _Controller {
  late _SignInState state;
  _Controller(this.state);
  String? email;
  String? password;

  void signIn() {
    FormState? currentState = state.formkey.currentState;
    if (currentState == null) return;
    if (!currentState.validate()) return;
    currentState.save();

    Users user = Users.fakeDB.firstWhere(
      (e) => e.email == email && e.password == password,
      orElse: () => Users(),
    );
    if (user.email == '') {
      MyUtil.showSnackBar(
        context: state.context,
        message: 'Incorrect Email/Password',
      );
    } else {
      Navigator.pushNamed(
        state.context,
        UserHomeScreen.routeName,
        arguments: user,
      );
    }
  }

  String? validateEmail(String? value) {
    if (value == null || !(value.contains('@') && value.contains('.')))
      return 'Invalid Email';
    else
      return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.length < 6)
      return 'Invalid Password';
    else
      return null;
  }

  void saveEmail(String? value) {
    email = value;
  }

  void savePassword(String? value) {
    password = value;
  }
}
