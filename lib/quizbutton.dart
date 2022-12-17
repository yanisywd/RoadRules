import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

List choice = ['Quiz1', 'Quiz2', 'Quiz3'];

class QuizzButton extends StatelessWidget {
  const QuizzButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedList(
        initialItemCount: choice.length,
        itemBuilder: ((context, index, Animation) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushNamed('/inter', arguments: choice[index]);
            },
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
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
                choice[index],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          );
        }),
      ),
    );
  }
}
