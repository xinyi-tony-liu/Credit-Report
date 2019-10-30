import 'package:flutter/material.dart';
import "pages/report_card.dart";

void main() => runApp(CreditReport());

class CreditReport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.orange,
        secondaryHeaderColor: Colors.red,
        accentColor: Colors.yellow,
        canvasColor: Colors.white,
        backgroundColor: Colors.transparent,
      ),
      home: ReportCardPage(),
    );
  }
}