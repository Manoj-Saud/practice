import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Data> newsModelList = <Data>[
    Data(
      "Manoj",
      "images/download.jpg",
      "Kathmandu",
    ),
    Data(
      "Lalit",
      "images/download.jpg",
      "Dang",
    ),
    Data(
      "Suman",
      "images/download.jpg",
      "Pokhara",
    ),
    Data(
      "Samir",
      "images/download.jpg",
      "Lalitpur",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('HOME PAGE'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 2),
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/detailPage',
                          arguments: newsModelList[index]);
                    },
                    child: Item(
                      newsModelList: newsModelList[index],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 20);
                },
                itemCount: newsModelList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.newsModelList,
  });

  final Data newsModelList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(newsModelList.name),
        Image.asset(height: 60, newsModelList.image),
        Text(newsModelList.title),
      ],
    );
  }
}

class Data {
  final String name;
  final String image;
  final String title;

  Data(
    this.name,
    this.image,
    this.title,
  );
}
