import 'package:flutter/material.dart';

void main() {
  runApp(CafeFinderApp());
}

class CafeFinderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '주변카페찾기',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('20200744 윤정훈 카페찾기앱'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.indigo],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.coffee,
                size: 80,
                color: Colors.white,
              ),
              SizedBox(height: 16),
              Text(
                'Cafe Finder',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CafeListScreen(location: '부산'),
                    ),
                  );
                },
                child: Text(
                  '부산의 예쁜카페 찾아보기',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.indigo,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Cafe {
  final String name;
  final String imageUrl;
  final String description;

  Cafe({
    required this.name,
    required this.imageUrl,
    required this.description,
  });
}

class CafeListScreen extends StatelessWidget {
  final String location;

  CafeListScreen({required this.location});

  List<Cafe> cafeList = [
    Cafe(
      name: '비커피',
      imageUrl: 'assets/images/cafe1.png',
        description:"서비스 옵션: 매장 내 식사 · 테이크아웃 · 배달이 안 됨"
            "주소: 부산광역시 해운대구 우동1로20번길 27-37\n\n"
            "영업시간:\n"
            "영업 종료 ⋅ 오전 9:00에 영업 시작\n\n"
            "연락처: 051-817-1112\n\n"

            "메뉴:\n"
            "- 허니비라떼(HOT) - 5,500원\n"
            "- 복숭아라떼(ICE) - 6,500원\n"
            "- 말차커피(ICE) - 6,500원\n"
            "- 시그니처번 - 4,500원\n"
            "- 퍼푸치노 - 3,500원\n"

    ),
    Cafe(
      name: '웨이브온 커피',
      imageUrl: 'assets/images/cafe2.png',
      description:"지역:"
          "부산 > 기장군/정관\n\n"

          "업종:"
          "세계음식 > 카페/커피숍\n\n"

          "매장소개:"
          "바다, 그리고 파도 위의 휴식'을 슬로건으로 하는 로스터리 카페입니다. 건물이 통유리로 되어 있어 내부에 앉아있어도 바다가 한 눈에 보입니다. 야외석과 테라스 또한 다양한 모양으로 준비되어 있으며 3층 건물로 이루어져 있어 좌석이 많습니다.\n\n"

          "전화번호:"
          "051-727-1660\n\n"

          "주소:"
          "부산광역시 기장군 장안읍 해맞이로 286\n"
          "(지번) 부산광역시 기장군 장안읍 월내리 553"),
    Cafe(
      name: '220볼트 오시리아',
      imageUrl:'assets/images/cafe3.png',
      description:  "상호 - 카페드220볼트\n"
          "주소 - 부산 기장군 기장읍 기장해안로 98 오시리아 스퀘어 3층\n"
          "영업시간 - 10:00~22:00(21:30 라스트오더), 토요일은 23:00까지\n"
          "추천메뉴 - 블랙씨 아메리카노, 루이보스 밀크티\n"
          "전화번호 - 070-4367-1725\n"
          "주차 - 지하주차장 무료"
    ), Cafe(
      name: '오후의 산책',
      imageUrl: 'assets/images/cafe4.png',
      description: "업종 - 세계음식 > 카페/커피숍\n"
      "전화번호 - 051-909-9190\n"
          "주소 - 부산 부산진구 새싹로 270-1\n"
          "(지번) 부산광역시 부산진구 초읍동 288-37"
    ), Cafe(
      name: '헤이든',
      imageUrl:'assets/images/cafe5.png',
      description:"지역 - 부산 > 기장군/정관\n"
          "업종 - 세계음식 > 카페/커피숍\n"
          "매장소개 - 단독주택처럼 보이는 아름다운 카페입니다. 외곽에 위치해 드라이브 하기 좋은 곳이며, 데이트 코스로도 추천합니다. 소박하고 정갈한 느낌의 실내 인테리어는 집에서 쉬는 듯한 편안한 느낌을 줍니다.\n"
          "전화번호 - 051-727-4717\n"
          "주소 - 부산광역시 기장군 일광면 문오성길 22\n"
          "(지번) 부산광역시 기장군 일광면 동백리 449오시는 길\n"
          "일광IC에서 차로 10분 거리\n"
          "가까운 역 - 온정 정류장\n"
          "매장 영업시간 - 10:30 ~ 21:30 CLOSE\n"
          "라스트 오더(디너) - 21:30"
    ), Cafe(
      name: '히든플래닛',
      imageUrl:'assets/images/cafe6.png',
      description:  "히든플래닛(planet9)\n"
          "음식점\n"
          "부산 중구 망양로 376-1 청운아파트앞\n"
          "영업시간: 10:00-22:00\n"
          "매주 월요일 휴무\n"
          "주류 OK\n"
          "반려동물 OK\n"
          "배달 OK\n"
          "전화: 051-442-0045\n"
          "주차: 가게앞 or 양옆도로"
    ), Cafe(
      name: '트레몬토710',
      imageUrl:'assets/images/cafe7.png',
      description: "이름: 트레몬토710 (tramonto710)\n"
          "구분: 카페·레스토랑 > 카페\n"
          "전화: 051-365-2270\n"
          "주소: 부산 북구 금곡대로 710-15"
    ), Cafe(
      name: '씨앤트리',
      imageUrl:'assets/images/cafe8.png',
      description: "씨앤트리 (Sea&tree)\n"
          "주소: 부산시 기장군 일광면 일광로 808\n"
          "주차장 있음\n"
          "운영 시간: Cafe - 평일 10:30AM-11PM / 주말 10:30AM-12PM\n"
          "전화: 051-727-1400\n"
          "인스타그램 주소: https://www.instagram.com/sea__and__tree/?hl=ko"

    ), Cafe(
      name: '화봉카페',
      imageUrl: 'assets/images/cafe9.png',
      description:"서비스 옵션: 매장 내 식사 · 테이크아웃 · 배달이 안 됨\n"
          "주소: 부산광역시 기장군 기장읍 연화리 356\n"
          "영업시간: 영업 종료 ⋅ 오전 10:00에 영업 시작\n"
          "연락처: 050-71344-1228"
    ), Cafe(
      name: '공극샌드커피',
      imageUrl:'assets/images/cafe10.png',
        description: '주소: 부산 기장군 기장읍 공수해안길 41\n'
            '연락처: 051-723-9770\n'
            '영업시간: 매일 10:00~23:00'

    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$location 지역 예쁜 카페'),
      ),
      body: ListView.builder(
        itemCount: cafeList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cafeList[index].name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CafeDetailScreen(cafe: cafeList[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class CafeDetailScreen extends StatelessWidget {
  final Cafe cafe;

  CafeDetailScreen({required this.cafe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('카페 상세 정보'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '카페: ${cafe.name}',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Image.network(
              cafe.imageUrl,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text(
              cafe.description,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
