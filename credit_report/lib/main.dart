import 'package:credit_report/pages/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(CreditReport());

class CreditReport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Creducation',
      theme: ThemeData(
        primaryColor: Color(0xfff25f5f),
        secondaryHeaderColor: Colors.orange,
        accentColor: Colors.black,
        canvasColor: Colors.white,
        backgroundColor: Colors.transparent,
      ),
      home: HomePage(),
    );
  }
}