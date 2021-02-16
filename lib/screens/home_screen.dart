import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          title: Text(
            "IN-TOUCH",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
          ),
          backgroundColor: Colors.deepPurple[400],
          centerTitle: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Divider(
                color: Colors.transparent,
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.deepPurple[50],
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Hey There.Stay Strong !",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w900,
                      color: Colors.deepPurple[400]),
                ),
              ),
              Divider(
                color: Colors.transparent,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      SvgPicture.asset(
                        "assets/images/Piechart.svg",
                        height: MediaQuery.of(context).size.height * 0.13,
                        width: MediaQuery.of(context).size.width * 0.13,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Figure 1",
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                            color: Colors.brown[800]),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset(
                        "assets/images/Barchart.svg",
                        height: MediaQuery.of(context).size.height * 0.13,
                        width: MediaQuery.of(context).size.width * 0.13,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Figure 2",
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                            color: Colors.brown[800]),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                color: Colors.deepPurple[400],
                thickness: 3,
                indent: 20,
                endIndent: 20,
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: CircleItem(
                      imageUrl: "assets/images/Sunrise.svg",
                      itemName: "Day Start",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: CircleItem(
                      imageUrl: "assets/images/Breathing.svg",
                      itemName: "Breath Technique",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: CircleItem(
                      imageUrl: "assets/images/Music.svg",
                      itemName: "Calm Music",
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.transparent,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: CircleItem(
                      imageUrl: "assets/images/Mediatation.svg",
                      itemName: "Meditation Guide",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: CircleItem(
                      imageUrl: "assets/images/Psychiatrist.svg",
                      itemName: "Psychiatrist List",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: CircleItem(
                      imageUrl: "assets/images/Diary.svg",
                      itemName: "Diary",
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.transparent,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: CircleItem(
                      imageUrl: "assets/images/Sunset.svg",
                      itemName: "Day End",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: CircleItem(
                      imageUrl: "assets/images/Report.svg",
                      itemName: "Report",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: CircleItem(
                      imageUrl: "assets/images/Profilepic.svg",
                      itemName: "Profile",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircleItem extends StatelessWidget {
  final String imageUrl;
  final String itemName;
  const CircleItem({Key key, this.imageUrl, this.itemName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          minRadius: 50,
          child: SvgPicture.asset(
            imageUrl,
            height: MediaQuery.of(context).size.height * 0.09,
            width: MediaQuery.of(context).size.width * 0.09,
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.orange[100],
        ),
        Divider(
          height: 10,
        ),
        Text(
          itemName,
          style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 15,
              color: Colors.brown[800]),
        ),
      ],
    );
  }
}
