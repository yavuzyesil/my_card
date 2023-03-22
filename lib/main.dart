import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: const MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});
  final String name = "John Doe";
  final String job = "Flutter Developer";
  final String mail = "mail@mail.com";
  final String phone = "+ 90 555 555 55 55";
  final mMarPad = const EdgeInsets.all(16.0);
  final sMarPad = const EdgeInsets.all(8.0);
  final colorWhite = Colors.white;
  final colorRed = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: mMarPad,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
                radius: 96,
                backgroundImage: NetworkImage("https://picsum.photos/800")),
            Padding(
              padding: mMarPad,
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            Padding(
              padding: sMarPad,
              child: Text(
                job.toUpperCase(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            SizedBox(
                width: (MediaQuery.of(context).size.width / 1.5),
                child: Divider(
                  color: colorRed,
                )),
            Card(
              margin: sMarPad,
              child: ListTile(
                leading: Icon(Icons.phone_android_outlined, color: colorWhite),
                title: Text(phone),
              ),
            ),
            Card(
              margin: sMarPad,
              child: ListTile(
                leading: Icon(Icons.mail_outline, color: colorWhite),
                title: Text(mail),
              ),
            )
          ],
        ),
      ),
    );
  }
}
