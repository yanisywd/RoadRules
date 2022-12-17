import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        child: const Text('go to quiz'),
        onPressed: () {
          Navigator.of(context).pushNamed(
            '/second',
            arguments: 'Hello there from the first page!',
          );
        },
      )),
    );
  }
}
