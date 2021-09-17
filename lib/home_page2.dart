import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key key}) : super(key: key);

  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  //String int double bool num dynamic
  String text = '치킨먹자!!';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage2'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(text),
            ElevatedButton(
              onPressed: () {
                print('치킨먹자');
                setState(() {
                  text = '짜장!!';
                });
                //람다식
              },
              child: Text('버튼'),
            ),
          ],
        ),
      ),
    );
  }
}
