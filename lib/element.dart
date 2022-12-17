import 'package:flutter/material.dart';
import 'package:autoecoleapp/route_generator.dart';
import 'package:string_validator/string_validator.dart';

class Element extends StatefulWidget {
  @override
  State<Element> createState() => _ElementState();
}

class _ElementState extends State<Element> {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[
      Color.fromARGB(251, 0, 162, 255),
      Color.fromRGBO(15, 255, 247, 1)
    ],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  final List posts = [
    {
      'post': 'interdiction',
      'img':
          "https://www.link-access.fr/img/cms/Produit/signaux-interdiction-type-b.jpg"
    },
    {
      'post': 'danger',
      'img':
          "https://www.mondial-infos.fr/wp-content/uploads/2021/07/panneaux-de-danger-1.png"
    },
    {
      'post': 'fin d\'obligation et d\'interdiction',
      'img':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSetT0GZBg0nCd2jOs3Lk72sZIzUXRBxmIIrg&usqp=CAU"
    },
    {
      'post': 'obligation',
      'img':
          "https://www.link-access.fr/img/cms/Produit/signaux-obligation-type-b.jpg"
    },
    {
      'post': 'indication',
      'img':
          "https://www.link-access.fr/img/cms/Produit/signaux-indication-type-c-page1-02.jpg"
    },
    {
      'post': 'temporaires',
      'img':
          "https://d31ezp3r8jwmks.cloudfront.net/j0ug64bo2vwgd6vvqmisp0h0fzj1"
    },
  ];

  // VoidCallback choice(String post) {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: posts.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.9, //height
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                  '/newshowcase',
                  arguments: posts[index]['post'],
                );
              },
              child: Container(
                alignment: Alignment.center,
                // padding: EdgeInsets.all(10),
                // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 1),
                // // width: double.infinity,
                decoration: BoxDecoration(
                  // color: Colors.yellow,
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(20.0),
                  // image: DecorationImage(
                  image: new DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.8), BlendMode.darken),
                    image: new NetworkImage(posts[index]['img']),
                  ),
                ),
                // image: NetworkImage(posts[index]['img']),
                // fit: BoxFit.cover)),
                child: Container(
                    // child: Text(
                    //   posts[index]['post'],
                    //   style: TextStyle(
                    //       fontSize: 25,
                    //       fontWeight: FontWeight.bold,
                    //       color: Colors.lightBlue),
                    // ),
                    child: Container(
                  // padding: EdgeInsets.all(10),
                  child: Text(
                    posts[index]['post'],
                    style: new TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()..shader = linearGradient),
                  ),
                )),
              ),
            );
          }),
    );
  }
}
