import 'package:credit_report/pages/article_view.dart';
import 'package:flutter/material.dart';

class RecInfo {
  String title;
  String type;
  String apr;
  String amount;
  String term;

  RecInfo(this.title, this.type, this.apr, this.amount, this.term);
}

class RecommendedPage extends StatefulWidget {
  RecommendedPage({Key key}) : super(key: key);

  @override
  _RecommendedState createState() => _RecommendedState();
}

class _RecommendedState extends State<RecommendedPage> {
  //Temp
  final List<RecInfo> _loans = [
    RecInfo("Fairstone", "Unsecured", "Unsecured Personal Loans from 26.99%",
        "\$500-\$20,000", "6-60Months"),
    RecInfo("Borrowell", "Secured", "Secured Personal Loans from 16.99%",
        "\$1,000-\$10,000", "6-36Months"),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 30,),
          Text(
            "For you...",
            style:
                TextStyle(color: Theme.of(context).primaryColor, fontSize: 40),
          ),
          SizedBox(height: 20,),
          RecommendedEntry(
            loan: _loans[0],
          ),
          SizedBox(
            height: 15,
          ),
          RecommendedEntry(
            loan: _loans[1],
          ),
        ],
      ),
    );
  }
}

class RecommendedEntry extends StatefulWidget {
  RecommendedEntry({Key key, this.loan}) : super(key: key);
  final RecInfo loan;

  @override
  _RecommendedEntryState createState() => _RecommendedEntryState();
}

class _RecommendedEntryState extends State<RecommendedEntry> {
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
      child: Column(
        children: <Widget>[
          Text(
            widget.loan.title,
            style: Theme.of(context)
                .textTheme
                .headline
                .apply(color: Theme.of(context).accentColor),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                widget.loan.type,
                style: Theme.of(context)
                    .textTheme
                    .body1
                    .apply(color: Theme.of(context).accentColor),
              ),
              Text(
                widget.loan.amount,
                style: Theme.of(context)
                    .textTheme
                    .body1
                    .apply(color: Theme.of(context).accentColor),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                widget.loan.apr,
                style: Theme.of(context)
                    .textTheme
                    .body1
                    .apply(color: Theme.of(context).accentColor),
              ),
              Text(
                widget.loan.term,
                style: Theme.of(context)
                    .textTheme
                    .body1
                    .apply(color: Theme.of(context).accentColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
