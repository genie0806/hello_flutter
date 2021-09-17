import 'package:flutter/material.dart';

class AdWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imageUrl;
  final Color color;

  const AdWidget({
    Key key,
    String this.title,
    String this.subTitle,
    String this.imageUrl,
    Color this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      margin: EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      subTitle,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: SizedBox(
              width: 150,
              child: Image.network(imageUrl),
            ),
          ),
        ],
      ),
    );
  }
}
