import 'package:credit_report/pages/article_feed.dart';
import 'package:credit_report/pages/detailed_report.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart' as prefix0;

class Debt {
  String name;
  double balance;
  double paid;

  Debt(this.name, this.balance, this.paid);
}

class Card {
  String name;
  double balance;
  String image;

  Card(this.name, this.balance, this.image);
}

class CardsPage extends StatefulWidget {
  CardsPage({Key key}) : super(key: key);

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<CardsPage> {
  // THIS IS TEMP
  List<Card> cards = [
    Card("TD Visa", -270.40, "images/unavailable.jpg"),
    Card("Mastercard Platinum", 41.32, "images/unavailable.jpg"),
    Card("American Express Centurian Card", 837.75, "images/unavailable.jpg"),
  ];

  List<Debt> loans = [
    Debt("OSAP 2017", 20000, 18000),
    Debt("OSAP 2018", 8241.32, 0),
  ];

  List<Debt> mortgages = [
    Debt("470 Park Ave.", 317000, 150000),
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
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  "My Cards",
                  style: Theme.of(context).textTheme.headline,
                ),
              ),
            ),
            CarouselSlider(
              height: 250,
              items: [0, 1, 2].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return CreditCard(
                      card: cards[i],
                    );
                  },
                );
              }).toList(),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  "My Loans",
                  style: Theme.of(context).textTheme.headline,
                ),
              ),
            ),
            CarouselSlider(
              height: 100.0,
              items: [0, 1].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Loans(
                      loan: loans[i],
                    );
                  },
                );
              }).toList(),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  "My Mortgages",
                  style: Theme.of(context).textTheme.headline,
                ),
              ),
            ),
            CarouselSlider(
              height: 80.0,
              items: [0].map((i) {
                return Builder(builder: (BuildContext context) {
                  return Mortgages(
                    mortgage: mortgages[i],
                  );
                });
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class CreditCard extends StatefulWidget {
  CreditCard({Key key, this.card}) : super(key: key);
  final Card card;

  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(12),
      color: Theme.of(context).canvasColor,
      child: Column(
        children: <Widget>[
          Container(
            width: 200.0,
            height: 125.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.card.image), fit: BoxFit.fill),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 12),
              child: Text(
                widget.card.name,
                style: Theme.of(context)
                    .textTheme
                    .headline
                    .apply(color: Theme.of(context).accentColor),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 12),
              child: Text(
                widget.card.balance.toString(),
                style: Theme.of(context)
                    .textTheme
                    .body1
                    .apply(color: Theme.of(context).accentColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Loans extends StatefulWidget {
  Loans({Key key, this.loan}) : super(key: key);
  final Debt loan;

  @override
  _LoansState createState() => _LoansState();
}

class _LoansState extends State<Loans> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(12),
      color: Theme.of(context).canvasColor,
      child: Column(
        children: <Widget>[
          Text(
            widget.loan.name,
            style: Theme.of(context)
                .textTheme
                .headline
                .apply(color: Theme.of(context).accentColor),
          ),
          Text(
            widget.loan.balance.toString(),
            style: Theme.of(context)
                .textTheme
                .body1
                .apply(color: Theme.of(context).accentColor),
          ),
        ],
      ),
    );
  }
}

class Mortgages extends StatefulWidget {
  Mortgages({Key key, this.mortgage}) : super(key: key);
  final Debt mortgage;

  @override
  _MortgagesState createState() => _MortgagesState();
}

class _MortgagesState extends State<Mortgages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(12),
      color: Theme.of(context).canvasColor,
      child: Column(
        children: <Widget>[
          Text(
            widget.mortgage.name,
            style: Theme.of(context)
                .textTheme
                .headline
                .apply(color: Theme.of(context).accentColor),
          ),
          Text(
            widget.mortgage.balance.toString(),
            style: Theme.of(context)
                .textTheme
                .body1
                .apply(color: Theme.of(context).accentColor),
          ),
        ],
      ),
    );
  }
}
