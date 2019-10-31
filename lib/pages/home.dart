import 'package:credit_report/pages/article_feed.dart';
import 'package:credit_report/pages/cards.dart';
import 'package:credit_report/pages/recommended.dart';
import 'package:credit_report/pages/report_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> _routeOptions = [
    CardsPage(),
    ReportCardPage(),
    ArticleFeedPage(),
    RecommendedPage(),
    CardsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Creducation",
          style: Theme.of(context)
              .textTheme
              .title
              .apply(color: Theme.of(context).canvasColor),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            title: Text("Report"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user),
            title: Text("Feed"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.thumb_up),
            title: Text("Recommended"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).secondaryHeaderColor,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).primaryColor,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _routeOptions[_selectedIndex],
    );
  }
}
