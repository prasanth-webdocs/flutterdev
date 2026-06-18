import 'package:flutter/material.dart';

class Motivate extends StatelessWidget {
  const Motivate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "STUDENT ID",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                child: CircleAvatar(
                  radius: 50,
                  child: CircleAvatar(
                    radius: 49,
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXK-_iR3ak1ZbtAX8j_Pf0oI4XAKoNDOvlyg&s",
                    ),
                  ),
                ),
              ),
              Text(
                "Name : Prasanth",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Course : MCA",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "College : MES AIMAT",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "College : MES AIMAT",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "ID : MCA25001",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
