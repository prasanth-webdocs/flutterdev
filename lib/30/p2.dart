import 'package:flutter/material.dart';

class Motivate extends StatelessWidget {
  const Motivate({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MotivateHome());
  }
}

class MotivateHome extends StatelessWidget {
  const MotivateHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "DAILY MOTIVATION",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Center(child: Text("Dream big Start small Act now")),
          ElevatedButton(onPressed: () {}, child: Text("New Quote")),
        ],
      ),
    );
  }
}
