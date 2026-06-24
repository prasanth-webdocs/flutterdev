import 'package:flutter/material.dart';
import 'package:http/http.dart';
//import 'dart:convert';
//import 'dart:io';
import 'package:get/get.dart';

class StateManage extends StatefulWidget {
  const StateManage({super.key});

  @override
  State<StateManage> createState() => _StateManageState();
}

class _StateManageState extends State<StateManage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Pop My Day",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.blue[100]),
          ),
          onPressed: () {
            debugPrint("clicked");

            Get.defaultDialog(
              backgroundColor: Colors.white,
              title: "Warning",
              middleText:
                  "This Page Redirect to Unauthorized Page \n Do You want to Continue",
              middleTextStyle: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.red,
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Get.to(() => NextPage());
                  },
                  child: Text("Yes"),
                ),
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text("No"),
                ),
              ],
            );
          },
          child: Text("Get In", style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("New Page")));
  }
}
