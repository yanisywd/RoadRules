import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:string_validator/string_validator.dart';

List images = const [
  'assets/images/IMG_1143 Medium.png',
  'assets/images/IMG_1144 Medium.png',
  'assets/images/IMG_1145 Medium.png',
  'assets/images/IMG_1146 Medium.png',
  'assets/images/IMG_1147 Medium.png',
  'assets/images/IMG_1148 Medium.png',
  'assets/images/IMG_1149 Medium.png',
  'assets/images/IMG_1150 Medium.png',
  'assets/images/IMG_1151 Medium.png',
  'assets/images/IMG_1152 Medium.png',
  'assets/images/IMG_1153 Medium.png',
  'assets/images/IMG_1154 Medium.png',
  'assets/images/IMG_1155 Medium.png',
  'assets/images/IMG_1156 Medium.png',
  'assets/images/IMG_1157 Medium.png',
  'assets/images/IMG_1158 Medium.png',
  'assets/images/IMG_1159 Medium.png',
  'assets/images/IMG_1160 Medium.png',
];

class Intersection extends StatelessWidget {
  const Intersection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 4,
          ),
          Container(
              color: Colors.white,
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 700),
                  viewportFraction: 1,
                  height: 600,
                ),
                itemCount: images.length,
                itemBuilder: (context, index, realIndex) {
                  final fileimg = images[index];
                  return buildImage(fileimg, index);
                },
              )),
        ],
      ),
    );
  }

  Widget buildImage(String fileimg, int index) => Container(
        decoration: BoxDecoration(
          // color: Colors.yellow,
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: [
            Container(
              width: 900,
              height: 510,
              // padding: EdgeInsets.all(1),
              margin: EdgeInsets.only(left: 0, top: 5, right: 0, bottom: 0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              // color: Colors.grey,
              child: Image.asset(
                images[index],
                width: 500,

                // fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      );
}
