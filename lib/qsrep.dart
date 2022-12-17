import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'qs.dart';

class Qsrep extends StatelessWidget {
  final int index;
  Qsrep({required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question ' + (index + 1).toString()),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 10, top: 80, right: 10, bottom: 1),
            alignment: Alignment.center,
            padding: EdgeInsets.all(5),
            // margin: EdgeInsets.symmetric(vertical: 0, horizontal: 1),
            // // width: double.infinity,

            child: Container(
              child: Text(
                'Question : ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 10, top: 1, right: 10, bottom: 10),
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            // margin: EdgeInsets.symmetric(vertical: 0, horizontal: 1),
            // // width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.yellow,
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Container(
              child: Text(
                qs[index]['question'],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 0),
            alignment: Alignment.center,
            padding: EdgeInsets.all(4),
            // margin: EdgeInsets.symmetric(vertical: 0, horizontal: 1),
            // // width: double.infinity,

            child: Text(
              'Réponse :',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 10),
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            // margin: EdgeInsets.symmetric(vertical: 0, horizontal: 1),
            // // width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.yellow,
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text(
              qs[index]['reponse'],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
