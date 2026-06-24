import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(ApiDemo());
}

class ApiDemo extends StatefulWidget {
  const ApiDemo({super.key});

  @override
  State<ApiDemo> createState() => _ApiDemoState();
}

// removed top-level fetchdata; fetching is handled in the state below

class _ApiDemoState extends State<ApiDemo> {
  String res = '';

  Future<void> fetchdata() async {
    final response = await http.get(Uri.parse("https://dummyjson.com/users"));
    if (response.statusCode == 200) {
      setState(() {
        res = response.toString();
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              res,
              style: TextStyle(
                fontSize: 30,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
