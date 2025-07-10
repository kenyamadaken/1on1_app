import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '1on1マッチングアプリ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<UserProfile> users = [
    UserProfile(name: "田中 太郎", description: "プログラミングが好きな大学生です。"),
    UserProfile(name: "山田 花子", description: "本とカフェ巡りが趣味です。"),
    UserProfile(name: "佐藤 健", description: "スポーツと旅行が大好きです。"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1on1マッチング"),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return UserCard(user: users[index]);
        },
      ),
    );
  }
}

class UserProfile {
  final String name;
  final String description;

  UserProfile({required this.name, required this.description});
}

class UserCard extends StatelessWidget {
  final UserProfile user;

  UserCard({required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(user.name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(user.description),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  // マッチ申請処理（今は未実装）
                },
                child: Text("マッチ申請"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


