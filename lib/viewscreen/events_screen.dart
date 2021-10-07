import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cwa2/model/event.dart';
import 'package:cwa2/viewscreen/view/webImage.dart';

class EventScreen extends StatefulWidget {
  static const routeName = '/cardListScreen';
  final List<Event> allEvents;
  EventScreen(this.allEvents);
  @override
  State<StatefulWidget> createState() {
    return _EventState();
  }
}

class _EventState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Todays Events'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (var event in widget.allEvents)
                Card(
                  color: Colors.lime[200],
                  elevation: 15.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          event.eventname,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        webImage(
                          url: event.imageURL,
                          context: context,
                        ),
                        Text(
                          event.location,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(
                          event.timings,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
