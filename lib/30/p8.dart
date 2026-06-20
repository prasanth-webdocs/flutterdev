import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CompanyBet extends StatefulWidget {
  const CompanyBet({super.key});

  @override
  State<CompanyBet> createState() => _CompanyBetState();
}

class _CompanyBetState extends State<CompanyBet> {
  List companydata = [];

  Future<void> datafetch() async {
    final data = await http.get(Uri.parse("https://retoolapi.dev/kiQJMs/data"));
    debugPrint(data.body);
    setState(() {
      companydata = jsonDecode(data.body);
    });
  }

  @override
  void initState() {
    super.initState();
    datafetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Stock Bet",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: companydata.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                backgroundImage: NetworkImage(companydata[index]['Column 5']),
              ),
            ),
            title: Text(companydata[index]['Name']),
            subtitle: Text(companydata[index]['Column 4']),
          );
        },
      ),
    );
  }
}
