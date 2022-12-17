import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'route_generator.dart';

List getListQuiz(data) {
  if (data == 'Quiz1') {
    verified = _quiz1;
  }
  if (data == 'Quiz2') {
    verified = _quiz2;
  }
  if (data == 'Quiz3') {
    verified = _quiz3;
  }
  return verified;
}

List verified = ['empty'];

class Inter extends StatelessWidget {
  final String data;
  Inter({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
            onPressed: () {
              getListQuiz(data);
              Navigator.of(context).pushNamed('/quiz', arguments: data);
            },
            child: Text('Demarer le Quiz')),
      ),
    );
  }
}

List _quiz1 = const [
  {
    'question':
        'https://img1.freepng.fr/20171220/qfe/sign-stop-png-5a3a9e413565a8.83932774151379104121871696.jpg',
    'answers': [
      {'answerText': 'priorite a droite ', 'score': false},
      {'answerText': 'stop', 'score': true},
      {'answerText': 'blocage circulation', 'score': false},
    ],
  },
  {
    'question':
        'https://w7.pngwing.com/pngs/132/69/png-transparent-panneau-de-signalisation-de-sens-interdit-en-france-panneau-de-signalisation-d-une-interdiction-specifique-en-france-traffic-sign-signalisation-routiere-no-entry-sign.png',
    'answers': [
      {'answerText': 'sens obligatoire ', 'score': false},
      {'answerText': 'interdit de stationer ', 'score': false},
      {'answerText': 'sense interdit', 'score': true},
    ],
  },
  {
    'question':
        'https://img2.freepng.fr/20180515/yae/kisspng-road-signs-in-singapore-the-highway-code-traffic-s-5afa8ace537be5.781081461526368974342.jpg',
    'answers': [
      {'answerText': 'station taxi ', 'score': false},
      {'answerText': 'fin autoroute', 'score': false},
      {'answerText': 'demi tour interdit', 'score': true},
    ],
  },
  {
    'question':
        'https://img2.freepng.fr/20180316/tze/kisspng-the-highway-code-traffic-sign-road-zebra-crossing-traffic-signs-5aac59a445f415.7336683015212445802865.jpg',
    'answers': [
      {'answerText': 'barage police', 'score': false},
      {'answerText': 'passage pietton', 'score': true},
      {'answerText': 'sens interdit ', 'score': false},
    ],
  },
  {
    'question':
        'https://media.normequip.com/1495882-large_default/panneau-virages-dont-le-premier-est-a-droite-a1c.jpg',
    'answers': [
      {
        'answerText': 'succession de virage dont le premier a gauche',
        'score': true
      },
      {'answerText': 'interdicton de tourner ', 'score': false},
      {'answerText': 'arret peage ', 'score': false},
    ],
  },
  {
    'question':
        'https://img1.freepng.fr/20180802/vhg/kisspng-the-highway-code-traffic-sign-speed-bump-warning-s-fichier-spain-traffic-signal-p5-svg-wikip%C3%A9dia-5b6360dbf28f54.9991768315332395159935.jpg',
    'answers': [
      {'answerText': 'pont', 'score': true},
      {'answerText': 'arret douane ', 'score': false},
      {'answerText': 'accee interdit au vehicule a moteur', 'score': false},
    ],
  },
  {
    'question':
        'https://www.proformaroute.fr/wp-content/uploads/2020/11/70.png',
    'answers': [
      {
        'answerText':
            'vitesse limite a 70km/h pour les vehicule qui pese plus de 5.5t',
        'score': true
      },
      {'answerText': 'arbre incliner', 'score': false},
      {'answerText': 'fin de limiation de vitesse 70', 'score': false},
    ],
  },
  {
    'question':
        'https://t4.ftcdn.net/jpg/00/50/88/53/360_F_50885375_a6uc3mURmO81BqmNqfL1kVkjFr3woZfE.jpg',
    'answers': [
      {'answerText': 'accee interdit au cyclo moteur ', 'score': false},
      {'answerText': 'stationement interdit au cyclomoteur', 'score': false},
      {'answerText': 'stationement interdit', 'score': true},
    ],
  },
  {
    'question':
        'https://w7.pngwing.com/pngs/457/476/png-transparent-traffic-sign-panneau-de-signalisation-routiere-temporaire-en-france-public-works-panneau-de-signalisation-routiere-en-france-panonceau-de-signalisation-routiere-en-france-canalization-angle-triangle-logo.png',
    'answers': [
      {
        'answerText':
            'accee interdit au vehicules qui trasporte des produit exposive',
        'score': false
      },
      {'answerText': 'risque de chutes de pierres', 'score': false},
      {'answerText': 'traveaux temporaire', 'score': true},
    ],
  },
];
List _quiz2 = const [
  {
    'question':
        'https://cdn-01.media-brady.com/store/sifr/media/catalog/product/s/i/sifr_b44_1_std.lang.all.gif',
    'answers': [
      {
        'answerText':
            'fin d\'obligation de l\'utilisation des chaines de neiges ',
        'score': true
      },
      {'answerText': 'chaine de neiges obligatoire', 'score': false},
      {
        'answerText': 'interdiction d\'utiliser les chaines de neiges ',
        'score': false
      },
    ],
  },
  {
    'question':
        'https://img.favpng.com/13/10/25/panneau-de-signalisation-de-circulation-dans-les-deux-sens-en-france-traffic-sign-clip-art-png-favpng-JmB19BBbaXnLWpnJxD476WjKv.jpg',
    'answers': [
      {'answerText': 'interdit de doubler a droite', 'score': false},
      {
        'answerText': 'circulation dans les deux sens temporaire',
        'score': true
      },
      {'answerText': 'circulation interdite', 'score': false},
    ],
  },
  {
    'question': 'https://www.virages.com/Images/Categorie_A1/B40_Zoom.gif',
    'answers': [
      {'answerText': 'fin d\obligation de piste cyclable', 'score': true},
      {'answerText': 'chemin interdit pour les velo', 'score': false},
      {'answerText': 'velo obligatoire', 'score': false},
    ],
  },
  {
    'question':
        'https://cdn-01.media-brady.com/store/sifr/media/catalog/product/cache/18/image/85e4522595efc69f496374d01ef2bf13/1563992365/s/i/sifr_b43_1_std.lang.all.gif',
    'answers': [
      {'answerText': 'vittese a 30 obligatoire ', 'score': false},
      {
        'answerText': 'chemin interdit pour vehicule qui pesent plus de 30 t',
        'score': false
      },
      {'answerText': 'fin de la vitesse obligatoire a 30', 'score': true},
    ],
  },
  {
    'question':
        'https://www.coursdecode.com/cdc-contents/uploads/2015/10/panneau-indication-C207.png',
    'answers': [
      {'answerText': 'debut autoroute ', 'score': true},
      {'answerText': 'chemin tout droit', 'score': false},
      {'answerText': 'attention traveaux', 'score': false},
    ],
  },
  {
    'question':
        'https://media1.panostock.fr/893-large_default/panneau-b31-fin-de-tpit.jpg',
    'answers': [
      {'answerText': 'interdiction de passer ', 'score': false},
      {'answerText': 'interdiction de stationner', 'score': false},
      {'answerText': 'fin de toutes les interdiction ', 'score': true},
    ],
  },
  {
    'question': 'https://www.virages.com/Images/Categorie_A1/B45a_Zoom.gif',
    'answers': [
      {'answerText': 'arret de bus ', 'score': false},
      {
        'answerText': 'fin d\'obligation de vois reserver pour les bus ',
        'score': true
      },
      {
        'answerText': 'interdiction de stationement pour les bus ',
        'score': false
      },
    ],
  },
  {
    'question':
        'https://www.drapeauxunic.fr/4668-home_default/virage-a-gauche.jpg',
    'answers': [
      {'answerText': 'virage droite', 'score': false},
      {'answerText': 'sens obligatoire a gauche ', 'score': false},
      {'answerText': 'virage a gauche', 'score': true},
    ],
  },
];
List _quiz3 = const [
  {
    'question': 'https://quiz-code-route.fr/panneaux/CE17.png',
    'answers': [
      {'answerText': 'hotel', 'score': true},
      {'answerText': 'hopitale', 'score': false},
      {'answerText': 'aire de repos', 'score': false},
    ],
  },
  {
    'question': 'https://quiz-code-route.fr/panneaux/CE15a.png',
    'answers': [
      {'answerText': 'essense obligatoire ', 'score': false},
      {'answerText': 'fin de limitation de vitesse ', 'score': false},
      {'answerText': 'poste de ravitaillement en carburant ', 'score': true},
    ],
  },
  {
    'question':
        'https://e7.pngegg.com/pngimages/183/55/png-clipart-panneau-d-annonce-de-chaussee-retrecie-en-france-danger-road-sign-in-france-panneau-de-signalisation-d-arret-et-de-stationnement-interdits-en-france-traffic-sign-panneau-de-signalisation.png',
    'answers': [
      {'answerText': 'chemin retrecie temporaire', 'score': true},
      {'answerText': 'chemin fermer', 'score': false},
      {'answerText': 'debut autoroute', 'score': false},
    ],
  },
  {
    'question':
        'https://as2.ftcdn.net/v2/jpg/01/24/88/53/500_F_124885327_mnK8Iwo1D6SgFCdjAFZfrm48MnO7CpXp.jpg',
    'answers': [
      {'answerText': 'demi tour obligatoire ', 'score': false},
      {'answerText': 'sens giratoire obligatoire', 'score': true},
      {'answerText': 'demi tour interdit ', 'score': false},
    ],
  },
  {
    'question':
        'https://www.codeenpoche.fr/static/2e1cfc00984f384f2fa4089bc774d28a/20fa6/panneaux-voie-reservee-vehicules-lents.jpg',
    'answers': [
      {'answerText': 'depasement obligatoire ', 'score': false},
      {'answerText': 'vehicule lent interdit', 'score': false},
      {'answerText': 'vois obligatoire pour vehicules lent', 'score': true},
    ],
  },
  {
    'question':
        'https://us.123rf.com/450wm/123vector/123vector1409/123vector140900272/31993867-vector-illustration-de-panneau-de-signalisation-de-triangle-pour-se-m%C3%A9fier-des-pi%C3%A9tons.jpg?ver=6',
    'answers': [
      {
        'answerText': 'attention endroit frequenter par les enfants',
        'score': true
      },
      {'answerText': 'chemin interdit pour les passants', 'score': false},
      {'answerText': 'chemin obligatoire pour les enfant ', 'score': false},
    ],
  },
  {
    'question':
        'https://media.normequip.com/15476-large_default/panneau-chaussee-particulierement-glissante-a4.jpg',
    'answers': [
      {'answerText': 'virage a gauche obligatoire ', 'score': false},
      {'answerText': 'danger chausée glissente', 'score': true},
      {'answerText': 'passage a niveaux', 'score': false},
    ],
  },
  {
    'question':
        'https://cdn1.prozon.com/22716-thickbox_default/a23-panneau-traversee-d-une-aire-de-danger-aerien.jpg',
    'answers': [
      {'answerText': 'attention passage avion ', 'score': false},
      {'answerText': 'passage obligatoire pour les avions ', 'score': false},
      {'answerText': 'traverser d\'une air de danger aerien ', 'score': true},
    ],
  },
];
