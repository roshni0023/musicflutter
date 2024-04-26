import 'package:flutter/material.dart';
import 'package:musicflutter/model/musicmodel.dart';

import '../model/playlist.dart';
import '../utils/colors.dart';

class SongScreen extends StatelessWidget {
  late Song song;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: kPrimaryColor,
        ),
        title: Text(
          'Now Playing',
          style: TextStyle(
              fontSize: 24.0,
              color: kPrimaryColor,
              fontWeight: FontWeight.w800),
        ),
        actions: [
          Icon(
            Icons.more_horiz,
            color: kPrimaryColor,
          ),
          SizedBox(width: 10.0,)
        ],
      ),
     body: Container(
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35.0),
            topRight: Radius.circular(35.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
              height: size.height * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage("assets/image/meditation.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Text(
                    'Flowres',
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Icon(
                    Icons.favorite,
                    color: favoriteColor,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Miley Cyrus',
                style: TextStyle(
                    color: kLightColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(top: 10.0),
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              width: double.infinity,
              child: LinearProgressIndicator(
                backgroundColor: kLightColor2,
                value: 0.6,
                valueColor: AlwaysStoppedAnimation(kPrimaryColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Text(
                    '04:30',
                    style: TextStyle(
                        color: kLightColor,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Text(
                    '06:30',
                    style: TextStyle(
                        color: kLightColor,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.playlist_add,
                    color: kLightColor,
                    size: 0.09 * size.width,
                  ),
                  Icon(
                    Icons.skip_previous,
                    color: kPrimaryColor,
                    size: 0.12 * size.width,
                  ),
                  Icon(
                    Icons.play_circle_outline,
                    color: kPrimaryColor,
                    size: 0.18 * size.width,
                  ),
                  Icon(
                    Icons.skip_next,
                    color: kPrimaryColor,
                    size: 0.12 * size.width,
                  ),
                  Icon(
                    Icons.swap_horiz,
                    color: kLightColor,
                    size: 0.09 * size.width,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
