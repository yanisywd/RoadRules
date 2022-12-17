// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/material.dart';
// import 'package:autoecoleapp/route_generator.dart';

// List verified = ['empty'];
// List interdiction = const [
//   {
//     'img':
//         'https://img1.freepng.fr/20171220/qfe/sign-stop-png-5a3a9e413565a8.83932774151379104121871696.jpg',
//     'nom': 'stop '
//   },
//   {
//     'img':
//         'https://w7.pngwing.com/pngs/132/69/png-transparent-panneau-de-signalisation-de-sens-interdit-en-france-panneau-de-signalisation-d-une-interdiction-specifique-en-france-traffic-sign-signalisation-routiere-no-entry-sign.png',
//     'nom': 'sense interdit '
//   },
//   {
//     'img':
//         'https://img2.freepng.fr/20180515/yae/kisspng-road-signs-in-singapore-the-highway-code-traffic-s-5afa8ace537be5.781081461526368974342.jpg',
//     'nom': 'demi tour interdit '
//   },
//   {
//     'img':
//         'https://img2.freepng.fr/20180614/ss/kisspng-the-highway-code-traffic-sign-overtaking-road-authority-5b233530f19ce6.3460865615290340329897.jpg',
//     'nom': 'depasement interdit '
//   },
//   {
//     'img':
//         'https://securotheque.wallonie.be/files/wp-content/uploads/Signaux/Type%20C%20Interdiction/C3-det.png',
//     'nom': 'circulation interdite dans les deux sens'
//   },
//   {
//     'img':
//         'https://www.toutelasignaletique.com/1855/kit-ou-panneau-routier-interdiction-de-tourner-a-gauche-a-la-prochaine-intersection-ref-b2a.jpg',
//     'nom': 'interdiction de tourner a gauche'
//   },
//   {
//     'img':
//         'https://www.signaletique-express.fr/2248-home_default/panneau-arret-au-poste-de-police-b5b.jpg',
//     'nom': 'arret au barage de police'
//   },
//   {
//     'img':
//         'https://www.metropole-equipements.com/media/catalog/product/cache/1/image/1000x1000/9df78eab33525d08d6e5fb8d27136e95/b/5/b5c_arret_au_poste_de_peage_metropole_equipements.1568734355.png',
//     'nom': 'arret au peage'
//   },
//   {
//     'img':
//         'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/France_road_sign_B8.svg/640px-France_road_sign_B8.svg.png',
//     'nom': 'accee interdit au transport de marchendise'
//   },
//   {
//     'img':
//         'https://www.toutelasignaletique.com/1909/kit-ou-panneau-seul-type-routier-acces-interdit-aux-vehicules-transportant-des-marchandises-dangereuses-ref-b18c.jpg',
//     'nom': 'Interdit véhicule transportant marchandises dangereuses'
//   },
//   {
//     'img': 'https://www.domformateur.com/medias/images/b3a.png',
//     'nom': 'depasement interdit pour les poid lourd'
//   },
//   {
//     'img':
//         'https://thumbs.dreamstime.com/z/limitation-de-vitesse-poteau-signalisation-vecteur-km-h-125109798.jpg',
//     'nom': 'limitation de vitesse a 50km/h'
//   },
//   {
//     'img':
//         'https://www.panosur.fr/4666-large_default/panneau-acces-interdit-aux-vehicules-de-transport-en-commun-de-personnes.jpg',
//     'nom': 'accee interdit au vehicule de trasport en comun'
//   },
//   {
//     'img': 'https://svpsign.fr/wp-content/uploads/2021/10/B17.png',
//     'nom': 'interdit de ne pas respecter une distance de 70 entre 2 vehicule'
//   },
//   {
//     'img': 'https://www.proformaroute.fr/wp-content/uploads/2020/11/70.png',
//     'nom': 'vitesse limite a 70km/h pour les vehicule qui pese plus de 5.5t'
//   },
//   {
//     'img':
//         'https://www.le-monde-du-stickers.fr/2484/sticker-klaxon-interdit.jpg',
//     'nom': 'klaxon interdit'
//   },
//   {
//     'img':
//         'https://t4.ftcdn.net/jpg/00/50/88/53/360_F_50885375_a6uc3mURmO81BqmNqfL1kVkjFr3woZfE.jpg',
//     'nom': 'stationement interdit'
//   },
//   {
//     'img':
//         'https://www.toutelasignaletique.com/23728/panneau-arret-et-stationnement-interdit.jpg',
//     'nom': 'arret et stationement interdit'
//   },
//   {
//     'img':
//         'https://abc-signaletique.fr/1686-large_default/panneau-interdit-115.jpg',
//     'nom': 'stationement interdit 1ere quenzeine'
//   },
//   // {'img': '', 'nom': ''},
// ];
// List avertisement = const [
//   {
//     'img':
//         'https://img2.freepng.fr/20180316/tze/kisspng-the-highway-code-traffic-sign-road-zebra-crossing-traffic-signs-5aac59a445f415.7336683015212445802865.jpg',
//     'nom': 'passage piettons '
//   },
//   {
//     'img':
//         'https://e7.pngegg.com/pngimages/818/883/png-clipart-road-signs-in-singapore-the-highway-code-traffic-sign-warning-sign-road-angle-driving-thumbnail.png',
//     'nom': 'glissement '
//   },
//   {
//     'img':
//         'https://img1.freepng.fr/20180607/fxh/kisspng-traffic-sign-the-highway-code-warning-sign-road-road-signals-5b19e10681a7e4.6063305215284226625311.jpg',
//     'nom': 'ralentiseur '
//   },
//   {
//     'img':
//         'https://img1.freepng.fr/20180802/vhg/kisspng-the-highway-code-traffic-sign-speed-bump-warning-s-fichier-spain-traffic-signal-p5-svg-wikip%C3%A9dia-5b6360dbf28f54.9991768315332395159935.jpg',
//     'nom': 'pont '
//   },
// ];

// List danger = const [
//   {
//     'img':
//         'https://media.normequip.com/1495882-large_default/panneau-virages-dont-le-premier-est-a-droite-a1c.jpg',
//     'nom': 'succession de virage dont le premier a gauche'
//   },
// ];

// class Showcase extends StatefulWidget {
//   final String data;
//   Showcase({required this.data});

//   @override
//   State<Showcase> createState() => _ShowcaseState();
// }

// class _ShowcaseState extends State<Showcase> {
//   List getList(data) {
//     {
//       if (data == 'interdiction') {
//         verified = interdiction;
//       }
//       if (data == 'avertisement') {
//         verified = avertisement;
//       }
//       if (data == 'danger') {
//         verified = danger;
//       }
//       if (data == 'fin d\'obligation et d\'interdiction ') {
//         verified = avertisement;
//       }
//       if (data == 'obligation') {
//         verified = avertisement;
//       }
//       if (data == 'temporaires') {
//         verified = avertisement;
//       }
//       return verified;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     // getList(data);
//     // return Scaffold(
//     //     body: Container(alignment: Alignment.center, child: Text('data')));
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('showcase here '),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(20),
//         // margin: EdgeInsets.symmetric(vertical: 0, horizontal: 1),
//         // width: double.infinity,

//         child: GridView.builder(
//             itemCount: getList(widget.data).length,
//             gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//                 maxCrossAxisExtent: 200,
//                 childAspectRatio: 0.6, //height
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing: 0),
//             itemBuilder: (context, index) {
//               return GestureDetector(
//                 onTap: () {
//                   Navigator.of(context).pushNamed(
//                     '/r',
//                     arguments: verified[index]['nom'],
//                   );
//                 },
//                 child: Container(
//                   // alignment: Alignment.center,
//                   padding: const EdgeInsets.symmetric(
//                       vertical: 3.0, horizontal: 5.0),
//                   // padding: EdgeInsets.all(5),
//                   margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
//                   // // width: double.infinity,
//                   decoration: BoxDecoration(
//                     // color: Color.fromARGB(255, 255, 17, 0),
//                     color: Color.fromARGB(255, 231, 143, 137),
//                     ////////////THE FUCKING COLOR /////
//                     border: Border.all(color: Colors.blue),
//                     borderRadius: BorderRadius.circular(20.0),
//                   ),
//                   child: Column(children: [
//                     Padding(
//                       padding: const EdgeInsets.all(7.0),
//                       child: Image.network(
//                         verified[index]['img'],
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     // SizedBox(
//                     //   height: 0,
//                     // ),
//                     Container(
//                       // margin:
//                       //     EdgeInsets.symmetric(vertical: 11, horizontal: 1),
//                       alignment: Alignment.center,
//                       child: Text(
//                         verified[index]['nom'],
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                             fontSize: 12, fontWeight: FontWeight.bold),
//                       ),
//                     )
//                     // Image(image: AssetImage(interdiction[index]['img'])),
//                   ]),
//                 ),
//               );
//             }),
//       ),
//     );
//   }
// }

// // List verified = ['empty'];
// // List interdiction = const [
// //   {
// //     'img':
// //         'https://img1.freepng.fr/20180317/yuq/kisspng-stop-sign-traffic-sign-royalty-free-clip-art-blank-stop-sign-5aad03f7af5e65.7773971015212881837183.jpg',
// //     'nom': 'stop '
// //   },
// //   {
// //     'img':
// //         'https://w7.pngwing.com/pngs/132/69/png-transparent-panneau-de-signalisation-de-sens-interdit-en-france-panneau-de-signalisation-d-une-interdiction-specifique-en-france-traffic-sign-signalisation-routiere-no-entry-sign.png',
// //     'nom': 'sense interdit '
// //   },
// //   {
// //     'img':
// //         'https://img2.freepng.fr/20180515/yae/kisspng-road-signs-in-singapore-the-highway-code-traffic-s-5afa8ace537be5.781081461526368974342.jpg',
// //     'nom': 'demi tour interdit '
// //   },
// //   {
// //     'img':
// //         'https://img2.freepng.fr/20180614/ss/kisspng-the-highway-code-traffic-sign-overtaking-road-authority-5b233530f19ce6.3460865615290340329897.jpg',
// //     'nom': 'depasement interdit '
// //   },
// // ];
// // List avertisement = const [
// //   {
// //     'img':
// //         'https://img2.freepng.fr/20180316/tze/kisspng-the-highway-code-traffic-sign-road-zebra-crossing-traffic-signs-5aac59a445f415.7336683015212445802865.jpg',
// //     'nom': 'passage piettons '
// //   },
// //   {
// //     'img':
// //         'https://e7.pngegg.com/pngimages/818/883/png-clipart-road-signs-in-singapore-the-highway-code-traffic-sign-warning-sign-road-angle-driving-thumbnail.png',
// //     'nom': 'glissement '
// //   },
// //   {
// //     'img':
// //         'https://img1.freepng.fr/20180607/fxh/kisspng-traffic-sign-the-highway-code-warning-sign-road-road-signals-5b19e10681a7e4.6063305215284226625311.jpg',
// //     'nom': 'ralentiseur '
// //   },
// //   {
// //     'img':
// //         'https://img1.freepng.fr/20180802/vhg/kisspng-the-highway-code-traffic-sign-speed-bump-warning-s-fichier-spain-traffic-signal-p5-svg-wikip%C3%A9dia-5b6360dbf28f54.9991768315332395159935.jpg',
// //     'nom': 'pont '
// //   },
// // ];
