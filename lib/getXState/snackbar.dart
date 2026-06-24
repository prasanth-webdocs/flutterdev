import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Snacks extends StatefulWidget {
  const Snacks({super.key});

  @override
  State<Snacks> createState() => _SnacksState();
}

class _SnacksState extends State<Snacks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Snack Bar",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.showSnackbar(
                  GetSnackBar(
                    snackStyle: SnackStyle.FLOATING,
                    title: "Success",
                    message: "Registration Successfull",
                    icon: Icon(Icons.done),
                    backgroundColor: Colors.red,
                    duration: Duration(seconds: 3),
                  ),
                );
              },

              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: Text(
                "go to next page",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  "Warning",
                  "This Page Restricted in India",
                  icon: Icon(Icons.warning, color: Colors.white),
                  duration: Duration(seconds: 3),
                );
              },

              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),

              child: Text(
                "go to third page",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Next Page")));
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Third Page")));
  }
}
