import 'package:flutter/material.dart';
import 'package:hello_flutter/model/ad_model.dart';

class AdDetailPage extends StatelessWidget {
  final Ad ad;

  const AdDetailPage({Key key, this.ad}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(ad.title) //aditem의 타이틀이 여기에 오게끔
          ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            ad.imageUrl,
            fit: BoxFit.cover,
          ),
          Text(ad.subTitle),
        ],
      ),
    );
  }
}
