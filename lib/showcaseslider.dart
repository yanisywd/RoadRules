import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'newshowcase.dart';

class ShowcaseSlider extends StatelessWidget {
  final String data;

  ShowcaseSlider({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Les Plaques'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 150,
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
                  viewportFraction: 0.8,
                  height: 480,
                ),
                itemCount: verified.length,
                itemBuilder: (context, index, realIndex) {
                  final fileimg = verified[index]['img'];
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
          border: Border.all(color: Colors.red),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: [
            Container(
              // padding: EdgeInsets.all(1),
              margin: EdgeInsets.only(left: 40, top: 5, right: 50, bottom: 0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              // color: Colors.grey,
              child: Image.network(
                verified[index]['img'],
                fit: BoxFit.cover,
              ),
              // Container(
              //     padding: EdgeInsets.all(20),
              //     // margin: EdgeInsets.symmetric(vertical: 0, horizontal: 1),
              //     // width: double.infinity,
              //     color: Colors.orange,
              //     child: Align(
              //       alignment: Alignment.bottomCenter,
              //       child: Text("Bottom text"),
              //     )
              //     // Text(
              //     //   verified[index]['nom'],
              //     //   style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              //     // ),
              //     )

              // child: Image(image: AssetImage(interdiction[index]['img'])),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.white,
              height: 140,
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              alignment: Alignment.center,
              child: Center(
                child: Text(
                  verified[index]['nom'],
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      );
}
