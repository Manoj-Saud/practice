import 'package:flutter/material.dart';

class FashionPage extends StatefulWidget {
  const FashionPage({super.key});

  @override
  State<FashionPage> createState() => _FashionPageState();
}

class _FashionPageState extends State<FashionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 10, 111, 193),
        title: Text("Fashain Page"),
      ),
      body: Column(
        children: const [
          Text(
              "Fashion is a great way to be able to express who you really are. The positive aspects of why fashion is a form of art is that it shows the person's creativity and benefits society. Fashion shows the characteristics of the person and shows that the personal style is unique in every way possible."),
        ],
      ),
    );
  }
}
