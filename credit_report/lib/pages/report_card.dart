import 'package:credit_report/pages/article_feed.dart';
import 'package:credit_report/pages/cards.dart';
import 'package:credit_report/pages/detailed_report.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class ReportCardPage extends StatefulWidget {
  ReportCardPage({Key key}) : super(key: key);

  @override
  _ReportCardState createState() => _ReportCardState();
}

class _ReportCardState extends State<ReportCardPage> {
  List<String> reportCategory = [
    "Payment History",
    "Credit Limit Utilization",
    "Length of Debt",
    "Value of Debt",
    "Credit Entries",
  ];

// THIS IS TEMP
  List<int> reportValues = [
    730,
    840,
    790,
    750,
    700,
  ];

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
        flexibleSpace: SafeArea(
          child: Stack(
            children: <Widget>[
              Row(
                children: <Widget>[
                  CupertinoButton(
                    child: Text(
                      "next",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CardsPage()));
                    },
                  ),
                ],
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
                  height: 140,
                  width: 140,
                  child: Text(
                    "Your overall grade",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor, fontSize: 37),
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
              height: 40,
            ),
            ReportCardEntry(
              label: reportCategory[0],
              score: reportValues[0],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailedReportPage(
                      title: reportCategory[0],
                      score: reportValues[0],
                      grade: toLetter(reportValues[0]),
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 15,
            ),
            ReportCardEntry(
              label: reportCategory[1],
              score: reportValues[1],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailedReportPage(
                      title: reportCategory[1],
                      score: reportValues[1],
                      grade: toLetter(reportValues[1]),
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 15,
            ),
            ReportCardEntry(
              label: reportCategory[2],
              score: reportValues[2],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailedReportPage(
                      title: reportCategory[2],
                      score: reportValues[2],
                      grade: toLetter(reportValues[2]),
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 15,
            ),
            ReportCardEntry(
              label: reportCategory[3],
              score: reportValues[3],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailedReportPage(
                      title: reportCategory[3],
                      score: reportValues[3],
                      grade: toLetter(reportValues[3]),
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 15,
            ),
            ReportCardEntry(
              label: reportCategory[4],
              score: reportValues[4],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailedReportPage(
                      title: reportCategory[4],
                      score: reportValues[4],
                      grade: toLetter(reportValues[4]),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ReportCardEntry extends StatefulWidget {
  ReportCardEntry({Key key, this.label, this.score, this.onTap})
      : super(key: key);
  final String label;
  final int score;
  final Function() onTap;

  @override
  _ReportCardEntryState createState() => _ReportCardEntryState();
}

class _ReportCardEntryState extends State<ReportCardEntry> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: [0.0, widget.score / 850 - 0.01, widget.score / 850 ,1.0],
                      colors: [Colors.red, Colors.red, Colors.orange, Colors.orange]),),
        height: 60,
        padding: EdgeInsets.all(12),
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
        ),
      ),
    );
  }
}
