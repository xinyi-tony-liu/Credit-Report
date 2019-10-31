import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Debt {
  String name;
  double total;
  double paid;

  Debt(this.name, this.total, this.paid);
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
    Card("TD Visa", -270.40, "images/td_visa.jpg"),
    Card("Mastercard Platinum", 41.32, "images/mastercard.jpg"),
    Card("American Express Centurion Card", 837.75, "images/american_card.jpg"),
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
    return Center(
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
            height: 230,
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
            height: 100,
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
            height: 100.0,
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
                "\$" + widget.card.balance.toString(),
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
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              border:
                  Border.all(color: Theme.of(context).primaryColor, width: 0.5),
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [
                    0.0,
                    widget.loan.paid / widget.loan.total - 0.01,
                    widget.loan.paid / widget.loan.total,
                    1.0
                  ],
                  colors: [
                    Theme.of(context).primaryColor,
                    Theme.of(context).primaryColor,
                    Theme.of(context).canvasColor,
                    Theme.of(context).canvasColor
                  ]),
            ),
            height: 20,
            padding: EdgeInsets.all(12),
          ),
          Text(
            "\$" +
                widget.loan.paid.toString() +
                " of \$" +
                widget.loan.total.toString(),
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
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              border:
                  Border.all(color: Theme.of(context).primaryColor, width: 0.5),
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [
                    0.0,
                    widget.mortgage.paid / widget.mortgage.total - 0.01,
                    widget.mortgage.paid / widget.mortgage.total,
                    1.0
                  ],
                  colors: [
                    Theme.of(context).primaryColor,
                    Theme.of(context).primaryColor,
                    Theme.of(context).canvasColor,
                    Theme.of(context).canvasColor
                  ]),
            ),
            height: 20,
            padding: EdgeInsets.all(12),
          ),
          Text(
            "\$" +
                widget.mortgage.paid.toString() +
                " of \$" +
                widget.mortgage.total.toString(),
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
