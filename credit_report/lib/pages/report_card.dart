import 'package:flutter/material.dart';

class ReportCardPage extends StatefulWidget {
  ReportCardPage({Key key}) : super(key: key);

  @override
  _ReportCardState createState() => _ReportCardState();
}

class _ReportCardState extends State<ReportCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Report Card",
          style: Theme.of(context)
              .textTheme
              .title
              .apply(color: Theme.of(context).canvasColor),
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
                  height: 140,
                  width: 140,
                  child: Text(
                    "Your overall grade",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor, fontSize: 40),
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
                      "A-",
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
            ReportCardEntry(
              label: "Payment History",
              score: 730,
            ),
            SizedBox(
              height: 15,
            ),
            ReportCardEntry(
              label: "Credit Limit Utilization",
              score: 840,
            ),
            SizedBox(
              height: 15,
            ),
            ReportCardEntry(
              label: "Length of Debt",
              score: 790,
            ),
            SizedBox(
              height: 15,
            ),
            ReportCardEntry(
              label: "Value of Debt",
              score: 750,
            ),
            SizedBox(
              height: 15,
            ),
            ReportCardEntry(
              label: "Credit Entries",
              score: 700,
            ),
          ],
        ),
      ),
    );
  }
}

class ReportCardEntry extends StatefulWidget {
  ReportCardEntry({Key key, this.label, this.score}) : super(key: key);
  final String label;
  final int score;

  @override
  _ReportCardEntryState createState() => _ReportCardEntryState();
}

class _ReportCardEntryState extends State<ReportCardEntry> {
  String toLetter(int score) {
    String r = '';
    int remainder;
    List<int> scale = [800, 740, 670, 580];
    if (score > scale[0]) {
      r = r + 'A';
      remainder = score - scale[0];
    } else if (score > scale[1]) {
      r = r + 'B';
      remainder = score - scale[1];
    } else if (score > scale[2]) {
      r = r + 'C';
      remainder = score - scale[2];
    } else if (score > scale[3]) {
      r = r + 'D';
      remainder = score - scale[3];
    } else {
      return 'F';
    }
    if (remainder > 30) {
      r = r + '+';
    } else if (remainder < 15) {
      r = r + '-';
    } else {
      r = r + ' ';
    }
    return r;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        height: 60,
        padding: EdgeInsets.all(12),
        color: Theme.of(context).primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              widget.label,
              style: Theme.of(context)
                  .textTheme
                  .headline
                  .apply(color: Theme.of(context).canvasColor),
            ),
            Text(
              toLetter(widget.score),
              style: Theme.of(context)
                  .textTheme
                  .headline
                  .apply(color: Theme.of(context).canvasColor),
            ),
          ],
        ));
  }
}
