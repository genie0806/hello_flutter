import 'package:flutter/material.dart';

class TaxiIcon extends StatelessWidget {
  final String title;

  const TaxiIcon({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 70,
          child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/3/3f/Taxi_Icon.png'),
        ),
        Text(title),
      ],
    );
  }
}
