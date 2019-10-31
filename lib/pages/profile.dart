import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<ProfilePage> {
  //Temp
  final List<String> fieldNames = ["Name", "Cards", "Loans", "Mortgages"];

  final List<String> fields = [
    "Chelsea Sprout",
    "3 Added",
    "2 Added",
    "1 Added"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Text(
            "Change Your Info",
            style:
                TextStyle(color: Theme.of(context).primaryColor, fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          ProfileEntry(
            name: fieldNames[0],
            value: fields[0],
            onSubmit: (input) {
              fields[0] = input;
            },
          ),
          SizedBox(
            height: 15,
          ),
          ProfileEntry(
            name: fieldNames[1],
            value: fields[1],
            onSubmit: (input) {
              fields[1] = input;
            },
          ),
          SizedBox(
            height: 15,
          ),
          ProfileEntry(
            name: fieldNames[2],
            value: fields[2],
            onSubmit: (input) {
              fields[2] = input;
            },
          ),
          SizedBox(
            height: 15,
          ),
          ProfileEntry(
            name: fieldNames[3],
            value: fields[3],
            onSubmit: (input) {
              fields[3] = input;
            },
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Settings"),
              Icon(Icons.settings),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileEntry extends StatefulWidget {
  ProfileEntry({Key key, this.name, this.value, this.onSubmit})
      : super(key: key);
  final String name;
  final String value;
  final Function(String input) onSubmit;

  @override
  _ProfileEntryState createState() => _ProfileEntryState();
}

class _ProfileEntryState extends State<ProfileEntry> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 90,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).primaryColor,
          width: 0.5,
        ),
      ),
      child: Column(children: <Widget>[
        Text(
          widget.name,
          style: Theme.of(context)
              .textTheme
              .body1
              .apply(color: Theme.of(context).accentColor),
        ),
        Row(
          children: <Widget>[
            Container(
              height: 40,
              width: 230,
              child: TextField(
                decoration: InputDecoration(
                  labelText: widget.value,
                ),
                onSubmitted: widget.onSubmit,
              ),
            ),
            Icon(Icons.create),
          ],
        )
      ]),
    );
  }
}
