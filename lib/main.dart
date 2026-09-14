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
              Image.asset(
                'assets/1694798235116.jpg',
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 20),
              const Text(
                "Preston",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
              'flutter developer',
              style: TextStyle(fontSize: 18),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('email: prestonmixon28@gmail.com'),
                  SizedBox(width: 10),
                ]
              ),
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.blue [200],
                child: const Text(
                  'about me',
                  style: TextStyle(fontSize: 16),
                ),
              )
            ]
          )
        )
      )
    );
  }
}