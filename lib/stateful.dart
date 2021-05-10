import 'package:flutter/material.dart';
import './awesome.dart';

class NewMe extends StatefulWidget {
  final String firstFace;

  NewMe(this.firstFace);

  @override
  State<StatefulWidget> createState() {
    return _NewMeState();
  }
}

class _NewMeState extends State<NewMe> {
  List<String> _awesome = [];

  @override
  void initState() {
    _awesome.add(widget.firstFace);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(5.0),
          child: RaisedButton(
            color: Theme.of(context).accentColor,
            onPressed: () {
              setState(() {
                _awesome.add('Watch me smile');
              });
            },
            child: Text('Look At Me'),
          ),
        ),
        Awesome(_awesome),
      ],
    );
  }
}
