import 'package:flutter/material.dart';

class ArticleFeedPage extends StatefulWidget {
  ArticleFeedPage({Key key}) : super(key: key);

  @override
  _ArticleFeedState createState() => _ArticleFeedState();
}

class _ArticleFeedState extends State<ArticleFeedPage> {
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
            ArticleFeedEntry(
              label: "Payment History",
              picture: "",
            ),
            SizedBox(
              height: 15,
            ),
            ArticleFeedEntry(
              label: "Credit Limit Utilization",
              score: 840,
            ),
            SizedBox(
              height: 15,
            ),
            ArticleFeedEntry(
              label: "Length of Debt",
              score: 790,
            ),
            SizedBox(
              height: 15,
            ),
            ArticleFeedEntry(
              label: "Value of Debt",
              score: 750,
            ),
            SizedBox(
              height: 15,
            ),
            ArticleFeedEntry(
              label: "Credit Entries",
              score: 700,
            ),
          ],
        ),
      ),
    );
  }
}

class ArticleFeedEntry extends StatefulWidget {
  ArticleFeedEntry({Key key, this.label, this.picture, this.summary})
      : super(key: key);
  final String label;
  final String picture;
  final String summary;

  @override
  _ArticleFeedEntryState createState() => _ArticleFeedEntryState();
}

class _ArticleFeedEntryState extends State<ArticleFeedEntry> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        height: 60,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).primaryColor,
            width: 0.5,
          ),
        ),
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
              widget.summary,
              style: Theme.of(context)
                  .textTheme
                  .headline
                  .apply(color: Theme.of(context).canvasColor),
            ),
          ],
        ));
  }
}
