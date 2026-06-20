import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Validate extends StatefulWidget {
  const Validate({super.key});

  @override
  State<Validate> createState() => _ValidateState();
}

class _ValidateState extends State<Validate> {
  List response = [];

  Future<void> fetchdata() async {
    final res = await http.get(Uri.parse("https://dummyjson.com/users"));

    setState(() {
      final Map<String, dynamic> decodeData = jsonDecode(res.body);
      response = decodeData['users'];
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
        backgroundColor: Colors.blue,
        title: Text("Api Validate"),
      ),
      body: ListView.builder(
        itemCount: response.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(response[index]['firstName']),
            subtitle: Text(response[index]['email']),
          );
        },
      ),
    );
  }
}
