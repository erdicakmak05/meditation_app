import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/home_page.dart';

class PracticesPage extends StatelessWidget {
  const PracticesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: new Text(
          "Practices",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(0.5, 0.5),
                  blurRadius: 0.5,
                ),
              ]),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PracticeContainer(
                    backround: Color(0xff2D31AC),
                    baslik: "Mental Training",
                    url: "assets/dal1.png",
                  ),
                  PracticeContainer(
                    backround: Color(0xff44AFE3),
                    baslik: "Mental Training",
                    url: "assets/dal1.png",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 17,
            ),
            //ALL PRACTİCES
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 15, top: 5),
              padding: EdgeInsets.only(right: 20),
              child: Text(
                "All Practices",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
              ),
            ),

            ///List Kısmı
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    listTileElement("assets/kucuk_resim1.png",
                        "Mental Training", "3 min 43 sec"),
                    listTileElement(
                        "assets/kucuk_resim2.png", "Gradutude", "3 min 43 sec"),
                    listTileElement("assets/kucuk_resim1.png",
                        "The Cure for Boredom", "3 min 43 sec"),
                    listTileElement("assets/kucuk_resim3.png", "Free Will 1",
                        "3 min 43 sec"),
                    listTileElement("assets/kucuk_resim1.png",
                        "Mental Training", "3 min 43 sec"),
                    listTileElement(
                        "assets/kucuk_resim2.png", "Gradutude", "3 min 43 sec"),
                    listTileElement("assets/kucuk_resim1.png",
                        "The Cure for Boredom", "3 min 43 sec"),
                    listTileElement("assets/kucuk_resim3.png", "Free Will 1",
                        "3 min 43 sec"),
                    listTileElement("assets/kucuk_resim1.png",
                        "Mental Training", "3 min 43 sec"),
                    listTileElement(
                        "assets/kucuk_resim2.png", "Gradutude", "3 min 43 sec"),
                    listTileElement("assets/kucuk_resim1.png",
                        "The Cure for Boredom", "3 min 43 sec"),
                    listTileElement("assets/kucuk_resim3.png", "Free Will 1",
                        "3 min 43 sec"),
                    listTileElement("assets/kucuk_resim1.png",
                        "Mental Training", "3 min 43 sec"),
                    listTileElement(
                        "assets/kucuk_resim2.png", "Gradutude", "3 min 43 sec"),
                    listTileElement("assets/kucuk_resim1.png",
                        "The Cure for Boredom", "3 min 43 sec"),
                    listTileElement("assets/kucuk_resim3.png", "Free Will 1",
                        "3 min 43 sec"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget listTileElement(String imgUrl, String title, String subtitle) {
  return ListTile(
    leading: Image.asset(
      imgUrl,
      fit: BoxFit.contain,
    ),
    title: Text(
      title,
      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
    ),
    subtitle: Text(
      subtitle,
      style: TextStyle(
        fontSize: 15,
      ),
    ),
    trailing: FavoriteButton(
      valueChanged: (_) {},
      iconSize: 45,
      iconColor: Colors.red,
      iconDisabledColor: Colors.grey.shade300,
    ),
    contentPadding: EdgeInsets.only(bottom: 0, left: 15, right: 15),
    visualDensity: VisualDensity.standard,
  );
  Divider(
    indent: 16,
  );
}

class PracticeContainer extends StatelessWidget {
  Color backround;

  String baslik;

  String url;

  PracticeContainer(
      {Key? key,
      required Color this.backround,
      required String this.baslik,
      required String this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 15, top: 5),
          padding: EdgeInsets.only(left: 15, top: 20),
          height: 180,
          width: 305,
          decoration: BoxDecoration(
            color: backround, //Color(0xff2D73D5),
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              image: AssetImage("assets/dal1.png"),
              fit: BoxFit.none,
              alignment: Alignment.bottomRight,
            ),
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
            ],
          ),
        ),
      ],
    );
  }
}
