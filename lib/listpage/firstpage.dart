import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailPage extends StatelessWidget {
  DetailPage({super.key});
  var nameList = [
    "flutter",
    "React Naive",
    "MERN",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("HomePage"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListView.separated(
              itemBuilder: (context, index) {
                return Text(
                  nameList[index],
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  height: 1,
                );
              },
              itemCount: nameList.length,
            ),
          ],
        ));
  }
}
