import 'package:credit_report/pages/article_feed.dart';
import 'package:credit_report/pages/detailed_report.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CardsPage extends StatefulWidget {
  CardsPage({Key key}) : super(key: key);

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<CardsPage> {
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
                              builder: (context) => ArticleFeedPage()));
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
            CarouselSlider(
              height: 200.0,
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Colors.amber),
                        child: Text(
                          'text $i',
                          style: TextStyle(fontSize: 16.0),
                        ));
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 12,
            ),
            CarouselSlider(
              height: 100.0,
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Colors.amber),
                        child: Text(
                          'text $i',
                          style: TextStyle(fontSize: 16.0),
                        ));
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 12,
            ),
            CarouselSlider(
              height: 80.0,
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Colors.amber),
                        child: Text(
                          'text $i',
                          style: TextStyle(fontSize: 16.0),
                        ));
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class CardsEntry extends StatefulWidget {
  CardsEntry({Key key, this.label, this.score, this.onTap}) : super(key: key);
  final String label;
  final int score;
  final Function() onTap;

  @override
  _CardsEntryState createState() => _CardsEntryState();
}

class _CardsEntryState extends State<CardsEntry> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
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
          ],
        ),
      ),
    );
  }
}
