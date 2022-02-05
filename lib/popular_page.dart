// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

class PopularPage extends StatelessWidget {
  const PopularPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int bottomCurrentIndex = 0;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: new Text(
          "Popular",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Colors.black,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(0.5, 0.5),
                  blurRadius: 1.0,
                ),
              ]),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded),
          onPressed: () => Navigator.pop(context),
          color: Colors.black,
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, int index) {
            return Column(
              children: [
                listTileElement("assets/kucuk_resim1.png", "Mental Training",
                    "3 min 43 sec"),
                listTileElement(
                    "assets/kucuk_resim2.png", "Gradutude", "3 min 43 sec"),
                listTileElement("assets/kucuk_resim1.png",
                    "The Cure for Boredom", "3 min 43 sec"),
                listTileElement(
                    "assets/kucuk_resim3.png", "Free Will 1", "3 min 43 sec"),
                listTileElement(
                    "assets/kucuk_resim4.png", "Free Will 2", "3 min 43 sec"),
                listTileElement(
                    "assets/kucuk_resim5.png", "Spiratual 1", "3 min 43 sec"),
              ],
            );
          },
        ),
      ),
    );
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
}
