import 'package:flutter/material.dart';
import 'package:hello_flutter/ad_widget.dart';
import 'package:hello_flutter/home_page2.dart';
import 'package:hello_flutter/main.dart';
import 'package:hello_flutter/taxi_icon.dart';
import 'package:hello_flutter/model/ad_model.dart';
import 'package:hello_flutter/ui/ad_detail_page.dart';

class KakaoPage extends StatelessWidget {
  KakaoPage({Key key}) : super(key: key);

  final _items = ['택시', '소형택시', '파란택시', '노랑택시', '서울택시', '이별택시', '미스터택시'];

//광고데이터
  final _adItems = [
    Ad(
        title: '무슨 파스타 먹을까',
        subTitle: '크림파스타',
        imageUrl:
            'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxOTA5MDVfMTcg%2FMDAxNTY3NjQ4NjkzMDIw.gxgfRP4gsB1ePRmaAXBw48mQ91yLXtvYf3SX5mftDUYg.HfqCwrzHsUjvYbjESAb1eNZjGTDaEj2Yk_qssTj-6p0g.JPEG.xpvirus1004%2FIMG_1386.JPG&type=sc960_832',
        color: Colors.green),
    Ad(
        title: '무슨 스테이크 먹을까',
        subTitle: '티본 스테이크',
        imageUrl:
            'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxOTA5MDVfMTcg%2FMDAxNTY3NjQ4NjkzMDIw.gxgfRP4gsB1ePRmaAXBw48mQ91yLXtvYf3SX5mftDUYg.HfqCwrzHsUjvYbjESAb1eNZjGTDaEj2Yk_qssTj-6p0g.JPEG.xpvirus1004%2FIMG_1386.JPG&type=sc960_832',
        color: Colors.red),
  ];
  //공지사항
  final _notices = [
    '첫 번째 공지',
    '첫 번째 공지',
    '첫 번째 공지',
    '첫 번째 공지',
    '첫 번째 공지',
    '첫 번째 공지',
    '첫 번째 공지',
    '첫 번째 공지',
    '첫 번째 공지',
  ];

  @override
  Widget build(BuildContext context) {
    final pageController = PageController(initialPage: 0);
    return Scaffold(
      appBar: AppBar(
        title: Text('Kakao T', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                children: _items.map((e) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage2(),
                        ),
                      );
                    },
                    child: TaxiIcon(title: e),
                  );
                }).toList(),
                shrinkWrap: true,
              ),
              //광고자리
              AspectRatio(
                aspectRatio: 2 / 1,
                child: PageView(
                  controller: pageController,
                  children: _adItems.map((Ad e) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AdDetailPage(ad: e),
                          ),
                        );
                      },
                      child: AdWidget(
                        title: e.title,
                        subTitle: e.subTitle,
                        imageUrl: e.imageUrl,
                        color: e.color,
                      ),
                    );
                  }).toList(),
                ),
              ),
              //공지사항
              ..._notices
                  .map(
                    (e) => ListTile(
                      leading: Icon(Icons.wifi),
                      title: Text(e),
                      subtitle: Text('이것은 서브'),
                      trailing: Icon(Icons.access_alarm_outlined),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                    ),
                  )
                  .toList()
            ],
          ),
        ),
      ),
    );
  }
}
