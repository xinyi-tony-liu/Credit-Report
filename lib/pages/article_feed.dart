import 'package:credit_report/pages/article_view.dart';
import 'package:flutter/material.dart';

class ArticleInfo{
  String title;
  String image;
  String summary;

  ArticleInfo(this.title, this.image, this.summary);
}

class ArticleFeedPage extends StatefulWidget {
  ArticleFeedPage({Key key}) : super(key: key);

  @override
  _ArticleFeedState createState() => _ArticleFeedState();
}

class _ArticleFeedState extends State<ArticleFeedPage> {
  //Temp
  final List<ArticleInfo> _articles =[
    ArticleInfo("Site A Title", "images/unavailable.jpg", "This is site A"),
        ArticleInfo("Site B Title", "images/unavailable.jpg", "This is site B"),
    ArticleInfo("Site C Title", "images/unavailable.jpg", "This is site C"),
    ArticleInfo("Site D Title", "images/unavailable.jpg", "This is site D"),
    ArticleInfo("Site E Title", "images/unavailable.jpg", "This is site E"),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ArticleFeedEntry(
           article: _articles[0],
          ),
          SizedBox(
            height: 15,
          ),
          ArticleFeedEntry(
            article: _articles[1],
          ),
          SizedBox(
            height: 15,
          ),
          ArticleFeedEntry(
           article: _articles[2],
          ),
          SizedBox(
            height: 15,
          ),
          ArticleFeedEntry(
            article: _articles[3],
          ),
          SizedBox(
            height: 15,
          ),
          ArticleFeedEntry(
            article: _articles[4],
          ),
        ],
      ),
    );
  }
}

class ArticleFeedEntry extends StatefulWidget {
  ArticleFeedEntry({Key key, this.article})
      : super(key: key);
  final ArticleInfo article;

  @override
  _ArticleFeedEntryState createState() => _ArticleFeedEntryState();
}

class _ArticleFeedEntryState extends State<ArticleFeedEntry> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ArticleViewPage(
                    title: widget.article.title,
                    image: widget.article.image,
                    summary: widget.article.summary,
                  ),
                ),);
      },
      child: Container(
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
                  widget.article.title,
                  style: Theme.of(context)
                      .textTheme
                      .headline
                      .apply(color: Theme.of(context).accentColor),
                ),
                Text(
                  widget.article.summary,
                  style: Theme.of(context)
                      .textTheme
                      .body2
                      .apply(color: Theme.of(context).accentColor),
                ),
              ],
            ),
            Image.asset(widget.article.image),
          ],
        ),
      ),
    );
  }
}