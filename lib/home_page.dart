import 'package:flutter/material.dart';
import 'package:meditation_app/popular_page.dart';
import 'package:meditation_app/practices.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Header(),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.only(left: 15, right: 0),
                child: Column(
                  children: [
                    SlideColonBar(
                      title: "Popular",
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PracticesPage())),
                            child: SlideColon(
                              backround: Color(0xff44AFE3),
                              baslik: "Anxiety",
                              url: "assets/images/agac.png",
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          SlideColon(
                            backround: Color(0xff2D73D5),
                            baslik: "Meditasyon",
                            url: "assets/images/agac.png",
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          SlideColon(
                            backround: Colors.orange.shade300,
                            baslik: "Sağlık",
                            url: "assets/images/agac.png",
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          SlideColon(
                            backround: Colors.pink.shade300,
                            baslik: "Enerji",
                            url: "assets/images/agac.png",
                          ),
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SlideColonBar(
                      title: "New",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SlideColon(
                            backround: Colors.orange.withOpacity(0.74),
                            baslik: "Mutluluk",
                            url: "assets/images/agac.png",
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          SlideColon(
                            backround: Colors.pink.shade300,
                            baslik: "Huzur",
                            url: "assets/images/agac.png",
                          ),
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SlideColonBar extends StatelessWidget {
  String title;
  SlideColonBar({Key? key, required String this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
          ),
          TextButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => PopularPage())),
            child: Text(
              "See All",
              style: TextStyle(color: Color(0xff4A80F0), fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

class SlideColon extends StatelessWidget {
  String baslik;
  Color backround = Color(0xff44AFE3);
  String url;
  SlideColon(
      {Key? key,
      required Color this.backround,
      required String this.baslik,
      required String this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 20),
      height: 165,
      width: 300,
      decoration: BoxDecoration(
        color: backround, //Color(0xff2D73D5),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                baslik,
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
              SizedBox(height: 12),
              Text(
                "The down the stress\nvolume",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 22),
              Row(
                children: [
                  Text(
                    "7 Steps",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w300),
                  ),
                  VerticalDivider(),
                  Text(
                    "5-11 min",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(
              bottom: 10,
            ),
            margin: EdgeInsets.only(right: 5),
            color: Colors.blue.withOpacity(0),
            child: Image.asset(
              url,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 350,
          color: Colors.white,
        ),
        Container(
          height: 330,
          decoration: BoxDecoration(
            color: Color(0xff2D31AC),
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
        Positioned(
          top: 145,
          right: 10,
          //left: MediaQuery.of(context).size.width - 20,
          child: Image.asset(
            "assets/girl.png",
            fit: BoxFit.cover,
            //height: 200,
            //width: 210,
          ),
        ),
        Positioned(
          top: 54,
          left: 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "DAY 7",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "Love and Accept\nYourself",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Positioned(
          left: 0,
          top: 168,
          bottom: 33,
          child: Image.asset(
            "assets/nature.png",
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          right: 0,
          top: 60,
          child: Image.asset(
            "assets/nature2.png",
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
