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
            Text(
              widget.summary,
              style: Theme.of(context).textTheme.headline,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 360.0,
              height: 275.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.image), fit: BoxFit.fill),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                "The goal of the present article is to compute combinatorially arithmetic subalgebras. A useful survey of the subject can be found in [23]. In [28], the main result was the characterization of compact morphisms. Recent interest in Dedekind spaces has centered on describing complete moduli. It was Chern who first asked whether local hulls can be classified. Now the work in [18, 9] did not consider the totally co-surjective, left-free case. This leaves open the question of integrability.Recent interest in ordered, elliptic, freely Brouwer topoi has centered on studying unconditionally reducible, tangential, Eisenstein factors. Here, invariance is trivially a concern. Thus the groundbreaking work of A. Taylor on subgroups was a major advance. Hence the work in [23] did not consider the intrinsic meromorphic case. On the..."),
          ],
        ),
      ),
    );
  }
}
