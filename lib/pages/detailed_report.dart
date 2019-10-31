import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailedReportPage extends StatefulWidget {
  DetailedReportPage({Key key, this.title, this.score, this.grade})
      : super(key: key);
  final String title;
  final int score;
  final String grade;

  @override
  _DetailedReportState createState() => _DetailedReportState();
}

class _DetailedReportState extends State<DetailedReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: Theme.of(context)
              .textTheme
              .title
              .apply(color: Theme.of(context).canvasColor),
        ),
        flexibleSpace: SafeArea(
          child: Stack(
            children: <Widget>[
              Row(
                children: <Widget>[],
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 160,
                  width: 140,
                  child: Text(
                    "Your " + widget.title + " grade",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor, fontSize: 30),
                  ),
                ),
                Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                      color: Theme.of(context).canvasColor,
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(70)),
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).primaryColor,
                          offset: new Offset(20.0, 10.0),
                          blurRadius: 20.0,
                        ),
                      ]),
                  child: CircleAvatar(
                    backgroundColor: Theme.of(context).backgroundColor,
                    child: Text(
                      widget.grade,
                      style: TextStyle(
                          color: Theme.of(context).primaryColor, fontSize: 80),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}