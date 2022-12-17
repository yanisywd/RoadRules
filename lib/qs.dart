import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

List qs = const [
  {
    'question': ' définir la classe B ? ',
    'reponse':
        '  classe B est un permis de conduire destiné aux véhicules légers où il est possible de conduire Véhicules dont le poids total n\'excède pas 3,5 tonnes destinés au transport de personnes, le nombre de places Il ne dépasse pas 8 et le pilote est 9. Véhicules dont le poids total n\'excède pas 3,5 tonnes destinés au transport de marchandises. Ce type de véhicule peut tracter une remorque ne pesant pas plus de 750 kg, à condition que le poids des deux véhicules ne dépasse pas 3,5 tonnes'
  },
  {
    'question': ' Quelle est la pancarte qui indique le nouveau conducteur ? ',
    'reponse':
        ' Le signe indiquant le nouveau conducteur est un disque blanc d\'un diamètre de 15 cm Dans un endroit visible derrière la voiture à gauche, et non sur la vitre, il est écrit le numéro 80 et la hauteur Le chiffre est de 10 cm.Les nouveaux conducteurs ayant moins de deux ans d\'expérience sont obligés de le mettre et les titulaires Un certificat de conduite temporaire, qui est un document remis à un nouveau conducteur et valable deux ans. Ce document Il peut être annulé en cas d\'infractions graves'
  },
  {
    'question':
        'quel poids maximum de matériel peut transporter un véhicule conduisible avec un permis B ',
    'reponse': '(3,5 tonnes '
  },
  {
    'question':
        'en cas de changement d’adresse, quel est le délai pour modifier la carte grise  ',
    'reponse': ' 1 mois'
  },
  {
    'question':
        ' donner la liste des papiers à présenter en cas de contrôle d’un véhicule de 3 ans ',
    'reponse': ' permis, carte grise, attestation d’assurance'
  },
  {
    'question':
        ' donner la fréquence des contrôles techniques pour les véhicules utilitaires de moins de 3,5 ',
    'reponse': ' tous les ans'
  },
  {
    'question': ' citer 3 cas de retrait immédiat du permis ',
    'reponse':
        'excès de vitesse d’au moins 40km/h, usage stupéfiant, refus de dépistage… '
  },
  {
    'question':
        ' donner la limite de vitesse quand il pleut sur une route à double sens ',
    'reponse': '80km/h  '
  },
  {
    'question':
        ' donner la limite de vitesse quand il pleut sur route à sens unique hors agglomération ',
    'reponse': '100km/h '
  },
  {
    'question': ' quelles sont les cas prioritaires a droite ?  ',
    'reponse':
        ' a l\'intersection de deux routes secondaires , au carfoure sans paneaux , au carrefour de deux grands axes routiers , de deux routes secondaires dangereuses  '
  },
  {
    'question':
        ' sur autoroute, quels véhicules doivent emprunter la voie lente ? ',
    'reponse': ' ceux qui roulent à moins de 60km/h'
  },
  {
    'question':
        '  sur autoroute, quelle est la vitesse minimum sur la voie de gauche ?',
    'reponse': '80km/h '
  },
  {
    'question':
        ' sur une autoroute à 3 voies à sens unique, quelles voies peuvent utiliser les véhicules long(>7M) ou de plus de 3,5t  ',
    'reponse': 'les 2 premières voies '
  },
  {
    'question': ' qu’est-ce qu’indiquent les balises blanches et bleues ',
    'reponse': ' un danger : obstacle comme un pont ou virage dangereux'
  },
  {
    'question':
        '  qu’est-ce qu’indiquent les balises blanches avec un anneau rouge ?',
    'reponse': ' intersection'
  },
  {
    'question':
        ' que peut-on faire en cas de ligne de dissuasion(pointillés rapprochés) sur autoroute ? ',
    'reponse':
        ' interdiction de se rabattre à l’approche d’une sortie ou ne pas dépasser avant de sortir'
  },
  {
    'question':
        ' que peut-on faire en cas de ligne de dissuasion(pointillés rapprochés) sur routes étroites et sinueuses ? ',
    'reponse': ' dépassement de véhicules lents seulement'
  },
  {
    'question':
        ' quels sont les inconvénients des boissons énergisantes avant de conduire ? ',
    'reponse': ' rend nerveux, incompatible avec une bonne conduite'
  },
  {
    'question': ' quelle est la couleur de fond des panneaux temporaires ? ',
    'reponse': 'orange '
  },
  {
    'question': ' quelle est la priorité en cas de feu orange clignotant ? ',
    'reponse': ' à droite'
  },
  {
    'question': ' que doit-on faire en cas de feu orange fixe ? ',
    'reponse': ' s’arrêter'
  },
  {
    'question': ' que doit-on faire en cas de feu rouge clignotant ? ',
    'reponse': 'arrêt absolu '
  },
  {
    'question':
        ' quel est le délai maximum pour déclarer un accident à l’assurance ? ',
    'reponse': ' 5 jours'
  },
  {
    'question': ' quelle est la distance latérale de sécurité à la campagne ',
    'reponse': '1,5m '
  },
  {
    'question': ' quelle est la distance latérale de sécurité en ville ? ',
    'reponse': '1m '
  },
  {
    'question': ' quelle est la distance d’arrêt à 90km/h sur route mouillée ',
    'reponse': '122m '
  },
  // {'question': '  ', 'reponse': ' '},
];

class Qs extends StatelessWidget {
  int numero = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedList(
        initialItemCount: qs.length,
        itemBuilder: ((context, index, Animation) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/qsrep', arguments: index);
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
                (index + 1).toString() + '- ' + qs[index]['question'],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          );
        }),
      ),
    );
  }
}
