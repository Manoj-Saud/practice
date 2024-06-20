import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var iconsList = ["Health", "fashion", "politic", "BCA", "Flutter"];

// List<IconsList> iconsList=<IconsList>[
  // IconsList(
//name:"Health",
  // ),
  // IconsList(
  // name: "Fashion",
  //  ),
  // IconsList(
  //  name: "Politic",
  // ),
  // IconsList(
  // name: "BCA",
  // ),
  // IconsList(
  // name: "Flutter",
  //  ),
// ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          //   TextButton(
          //    onPressed: () {
          //    Navigator.of(context).push(
          //      MaterialPageRoute(
          //     builder: (context) => HomePage(),
          //   ),
          //    );
          //  },
          //  child: Text("Next page"),
          //  ),
          SizedBox(
            height: 30,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.green),
                    padding: WidgetStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 10),
                    ),
                  ),
                  onPressed: () {
                    String page = pageSwitch(index);
                    Navigator.pushNamed(
                      context,
                      page,
                    );
                  },
                  child: Text(
                    iconsList[index],
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 5,
                );
              },
              itemCount: iconsList.length,
            ),
          ),
        ],
      ),
    );
  }
}

String pageSwitch(int index) {
  String page = "/homePage";
  switch (index) {
    case 0:
      page = "/healthPage";
      break;
    case 1:
      page = "/fashionPage";
    case 2:
      page = "/politicsPage";
    default:
      page = "/homePage";
  }
  // ignore: avoid_print
  print(page);
  return page;
}
//class List extends StatelessWidget {
 // const List({
   /// super.key,
   // required this.iconsList,
  

  //@override
 // Widget build(BuildContext context) {
   // return Column(
    //  crossAxisAlignment: CrossAxisAlignment.start,
      //children: [
      //  Text(IconsList.name),
       // Image.asset(height: 60, newsModelList.image),
        //Text(newsModelList.title),
      
  
  


//class IconsList {
 // final String name;
 /// IconsList({
   // required this.name,
  

