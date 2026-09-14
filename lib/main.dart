import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: const Text('Digital Card'),
        ),
        body:Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ProfileHeader(),
              const SizedBox(height: 20),
              
              const Text(
              'flutter developer',
              style: TextStyle(fontSize: 18),
              ),
              const InfoCard(title: 'Email', value: 'prestonmixon28@gmail.com'),

              const InfoCard(title: 'about me', value: 'Im learning flutter and app development')
            ]
          )
        )
      )
    );
  }
}

class ProfileHeader extends StatelessWidget {
   const ProfileHeader({super.key});

   @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/1694798235116.jpg',
          width: 150,
          height: 150,
        ),
        const SizedBox(height: 20),
        const Text(
          'Preston',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String value;

  const InfoCard({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Text('$title: $value'),
    );
  }
}