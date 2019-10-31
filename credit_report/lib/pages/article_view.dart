import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ArticleViewPage extends StatefulWidget {
  ArticleViewPage({Key key, this.title, this.image, this.summary})
      : super(key: key);
  final String title;
  final String image;
  final String summary;

  @override
  _ArticleViewState createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleViewPage> {
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
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
            width: 360.0,
            height: 360.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.image), fit: BoxFit.fill),
            ),
          ),
            SizedBox(
              height: 60,
            ),
            Text(widget.summary)
          ],
        ),
      ),
    );
  }
}
