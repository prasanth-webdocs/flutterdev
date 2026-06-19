import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(Validate());
}

class Validate extends StatefulWidget {
  const Validate({super.key});

  @override
  State<Validate> createState() => _ValidateState();
}

class _ValidateState extends State<Validate> {
  //function
  List res = [];

  Future<void> fetchdata() async {
    final response = await http.get(Uri.parse("https://dummyjson.com/users"));
    final data = jsonDecode(response.body);

    setState(() {
      res = data['users'];
    });
  }

  @override
  void initState() {
    super.initState();
    fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Api Validation"),
        backgroundColor: Colors.blue,
      ),

      body: ListView.builder(
        itemBuilder: (context, index) {
          final user = res[index];
          return ListTile(title: Text(user['firstName'] ?? ''));
        },
        itemCount: res.length,
      ),
    );
  }
}
