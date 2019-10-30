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
          "Article Feed",
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
            ArticleFeedEntry(
              label: "Site A Title",
              picture: "images/unavailable.jpg",
              summary: "This is site A",
            ),
            SizedBox(
              height: 15,
            ),
            ArticleFeedEntry(
              label: "Site B Title",
              picture: "images/unavailable.jpg",
              summary: "This is site B",
            ),
            SizedBox(
              height: 15,
            ),
            ArticleFeedEntry(
              label: "Site C Title",
              picture: "images/unavailable.jpg",
              summary: "This is site C",
            ),
            SizedBox(
              height: 15,
            ),
            ArticleFeedEntry(
              label: "Site D Title",
              picture: "images/unavailable.jpg",
              summary: "This is site D",
            ),
            SizedBox(
              height: 15,
            ),
            ArticleFeedEntry(
              label: "Site E Title",
              picture: "images/unavailable.jpg",
              summary: "This is site E",
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
        height: 90,
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
            Column(
              children: <Widget>[
                Text(
                  widget.label,
                  style: Theme.of(context)
                      .textTheme
                      .headline
                      .apply(color: Theme.of(context).accentColor),
                ),
                Text(
                  widget.summary,
                  style: Theme.of(context)
                      .textTheme
                      .body2
                      .apply(color: Theme.of(context).accentColor),
                ),
              ],
            ),
            Image.asset(widget.picture),
          ],
        ));
  }
}
