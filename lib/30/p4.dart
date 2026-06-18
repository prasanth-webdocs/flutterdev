import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Hi, Santa!",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "23 jan 2021",
                    style: TextStyle(
                      color: Colors.blue[200],
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Icon(Icons.notifications, color: Colors.white),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.white),
                  hintText: "Search",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "how do you feel",
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(Icons.more_horiz, color: Colors.white),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  OverflowBar(
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        child: Icon(Icons.emoji_emotions_outlined),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Icon(Icons.emoji_emotions_outlined),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Icon(Icons.emoji_emotions_outlined),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Icon(Icons.emoji_emotions_outlined),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Badly"),
                        Text("Badly"),
                        Text("Badly"),
                        Text("Badly"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Icon(Icons.list_rounded),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("excercice"),
                          Icon(Icons.more_horiz_outlined),
                        ],
                      ),
                      taskcard(),
                      taskcard(),
                      taskcard(),
                      taskcard(),
                      taskcard(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class taskcard extends StatelessWidget {
  const taskcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.heart_broken),
              Column(
                children: [
                  Text(
                    "Speaking Skills",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text("16 Excercises ", style: TextStyle(fontSize: 15)),
                ],
              ),
              Icon(Icons.more_horiz),
            ],
          ),
        ],
      ),
    );
  }
}
