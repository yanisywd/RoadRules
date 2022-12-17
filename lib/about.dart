import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'route_generator.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            alignment: Alignment.center,
            child: Text('created by Yahia Ouahmed Yanis\n'),
          ),
          Container(
            alignment: Alignment.center,
            child: Text('All right reserved 2022\n '),
          ),
        ],
      ),
    );
  }
}
