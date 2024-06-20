import 'package:flutter/material.dart';

class HealthPage extends StatefulWidget {
  const HealthPage({super.key});

  @override
  State<HealthPage> createState() => _HealthPageState();
}

class _HealthPageState extends State<HealthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Health"),
        backgroundColor: Colors.blue,
      ),
      body: const Column(
        children: [
          Text(
              "This is the Health Page where u fime thr ifromation about the different disease that shoes in the human body"),
          SizedBox(
            height: 30,
          ),
          Text(
            "Thats for watching my page ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
