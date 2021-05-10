import 'package:flutter/material.dart';

class Awesome extends StatelessWidget {
  final List<String> awesome;

  Awesome(this.awesome);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: awesome
          .map(
            (element) => Card(
              child: Column(
                children: <Widget>[Image.asset('assets/me.jpg'), Text(element)],
              ),
            ),
          )
          .toList(),
    );
  }
}
