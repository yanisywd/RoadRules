import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

List verified = ['empty'];
List interdiction = const [
  {
    'img':
        'https://img1.freepng.fr/20171220/qfe/sign-stop-png-5a3a9e413565a8.83932774151379104121871696.jpg',
    'nom': 'stop '
  },
  {
    'img':
        'https://w7.pngwing.com/pngs/132/69/png-transparent-panneau-de-signalisation-de-sens-interdit-en-france-panneau-de-signalisation-d-une-interdiction-specifique-en-france-traffic-sign-signalisation-routiere-no-entry-sign.png',
    'nom': 'sense interdit '
  },
  {
    'img':
        'https://img2.freepng.fr/20180515/yae/kisspng-road-signs-in-singapore-the-highway-code-traffic-s-5afa8ace537be5.781081461526368974342.jpg',
    'nom': 'demi tour interdit '
  },
  {
    'img':
        'https://img2.freepng.fr/20180614/ss/kisspng-the-highway-code-traffic-sign-overtaking-road-authority-5b233530f19ce6.3460865615290340329897.jpg',
    'nom': 'depasement interdit '
  },
  {
    'img':
        'https://securotheque.wallonie.be/files/wp-content/uploads/Signaux/Type%20C%20Interdiction/C3-det.png',
    'nom': 'circulation interdite dans les deux sens'
  },
  {
    'img':
        'https://www.toutelasignaletique.com/1855/kit-ou-panneau-routier-interdiction-de-tourner-a-gauche-a-la-prochaine-intersection-ref-b2a.jpg',
    'nom': 'interdiction de tourner a gauche'
  },
  {
    'img':
        'https://www.signaletique-express.fr/2248-home_default/panneau-arret-au-poste-de-police-b5b.jpg',
    'nom': 'arret au barage de police'
  },
  {
    'img':
        'https://www.metropole-equipements.com/media/catalog/product/cache/1/image/1000x1000/9df78eab33525d08d6e5fb8d27136e95/b/5/b5c_arret_au_poste_de_peage_metropole_equipements.1568734355.png',
    'nom': 'arret au peage'
  },
  {
    'img':
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/France_road_sign_B8.svg/640px-France_road_sign_B8.svg.png',
    'nom': 'accee interdit au transport de marchendise'
  },
  {
    'img':
        'https://www.toutelasignaletique.com/1909/kit-ou-panneau-seul-type-routier-acces-interdit-aux-vehicules-transportant-des-marchandises-dangereuses-ref-b18c.jpg',
    'nom': 'Interdit véhicule transportant marchandises dangereuses'
  },
  {
    'img': 'https://www.domformateur.com/medias/images/b3a.png',
    'nom': 'depasement interdit pour les poid lourd'
  },
  {
    'img':
        'https://thumbs.dreamstime.com/z/limitation-de-vitesse-poteau-signalisation-vecteur-km-h-125109798.jpg',
    'nom': 'limitation de vitesse a 50km/h'
  },
  {
    'img':
        'https://www.panosur.fr/4666-large_default/panneau-acces-interdit-aux-vehicules-de-transport-en-commun-de-personnes.jpg',
    'nom': 'accee interdit au vehicule de trasport en comun'
  },
  {
    'img': 'https://svpsign.fr/wp-content/uploads/2021/10/B17.png',
    'nom': 'interdit de ne pas respecter une distance de 70 entre 2 vehicule'
  },
  {
    'img': 'https://www.proformaroute.fr/wp-content/uploads/2020/11/70.png',
    'nom': 'vitesse limite a 70km/h pour les vehicule qui pese plus de 5.5t'
  },
  {
    'img':
        'https://www.le-monde-du-stickers.fr/2484/sticker-klaxon-interdit.jpg',
    'nom': 'klaxon interdit'
  },
  {
    'img':
        'https://t4.ftcdn.net/jpg/00/50/88/53/360_F_50885375_a6uc3mURmO81BqmNqfL1kVkjFr3woZfE.jpg',
    'nom': 'stationement interdit'
  },
  {
    'img':
        'https://www.toutelasignaletique.com/23728/panneau-arret-et-stationnement-interdit.jpg',
    'nom': 'arret et stationement interdit'
  },
  {
    'img':
        'https://abc-signaletique.fr/1686-large_default/panneau-interdit-115.jpg',
    'nom': 'stationement interdit 1ere quenzeine'
  },
  {
    'img':
        'https://www.techni-contact.com/ressources/images/produits/zoom/11649615-1.jpg',
    'nom': 'interdit au cyclomoteur'
  },
  {
    'img': 'https://www.direct-signaletique.com/I-Autre-25644_459x459-.net.jpg',
    'nom': 'interdit au vehicule a moteur'
  },
  {
    'img':
        'https://c8.alamy.com/compfr/hm5bwe/panneau-routier-utilise-en-espagne-entree-interdite-aux-vehicules-a-traction-animale-hm5bwe.jpg',
    'nom': 'accee interdit au vehicule a traction animale'
  },
  {
    'img':
        'https://previews.123rf.com/images/jojoo64/jojoo641609/jojoo64160900062/62979652-panneau-de-signalisation-r%C3%A9glementaire-belge-aucune-charrette-%C3%A0-bras-.jpg',
    'nom': 'accee interdit au charette a bras '
  },
  {
    'img':
        'https://www.toutelasignaletique.com/1903/kit-ou-panneau-seul-type-routier-interdiction-aux-vehicules-de-circuler-sans-maintenir-une-distance-de-70-m-ref-b17.jpg',
    'nom': 'interdit de circuler sans maintenir un intervale de 70 m'
  },
  {
    'img':
        'https://www.toutelasignaletique.com/1863/kit-ou-panneau-seul-type-routier-interdiction-aux-camions-de-plus-de-35t-de-depasser-tous-les-vehicules-ref-b3a.jpg',
    'nom': 'depasement interdit pour les camion'
  },
  {
    'img':
        'https://www.techni-contact.com/ressources/images/produits/thumb_familles/panneau-interdit-au-vehicule-plus-de-10-m-b10-12420089-1.jpg',
    'nom': 'interdit pour les vehicule de plus de 10m'
  },
  {
    'img':
        'https://e7.pngegg.com/pngimages/949/624/png-clipart-3-5-t-capacity-signage-3-5t-restriction-truck-road-sign-transport-traffic-signs-thumbnail.png',
    'nom': 'interdit au camion de plus de 3.5 t'
  },
  {
    'img':
        'https://cdn-01.media-brady.com/store/stbefr/media/catalog/product/d/m/dmeu_y4142989_02_std.lang.all.gif',
    'nom': 'accee interdit au vehicule dont la taille est superieur a 3.5 m'
  },
  {
    'img':
        'https://www.usinenouvelle.com/expo/img/panneau-b9b-acces-interdit-aux-cycles-015359147-product_zoom.jpg',
    'nom': 'accee interdit au velo '
  },
];

List danger = const [
  {
    'img':
        'https://media.normequip.com/1495882-large_default/panneau-virages-dont-le-premier-est-a-droite-a1c.jpg',
    'nom': 'succession de virage dont le premier a gauche'
  },
  {
    'img':
        'https://www.stocksignes.fr/509-4127-thickbox/attention-chaussee-retrecie-classe-1-500mm.jpg',
    'nom': 'chausseé retrecie'
  },
  {
    'img':
        'https://www.usinenouvelle.com/expo/img/panneau-virages-dont-le-premier-est-a-droite-a1c-013706345-product_zoom.jpg',
    'nom': 'succession de virage dont le premier a droite'
  },
  {
    'img': 'https://www.drapeauxunic.fr/4668-home_default/virage-a-gauche.jpg',
    'nom': 'virage a gauche '
  },
  {
    'img':
        'https://www.signaletique-express.fr/2163-large_default/panneau-virage-a-droite-a1a.jpg',
    'nom': 'virage a droite'
  },
  {
    'img': 'https://assets.stickpng.com/images/585f8effcb11b227491c3551.png',
    'nom': 'circulation dans les deux sens '
  },
  {
    'img':
        'https://media.istockphoto.com/id/666870814/fr/vectoriel/panneau-de-signalisation-utilis%C3%A9s-en-espagne-passage-danimaux-sauvages.jpg?s=170667a&w=0&k=20&c=yOiOuvN-V7NDo4ytoooPIjjw4dAuvVqIATPrI2GRa6w=',
    'nom': 'passage d\'animeaux sauvages '
  },
  {
    'img':
        'https://e7.pngegg.com/pngimages/818/883/png-clipart-road-signs-in-singapore-the-highway-code-traffic-sign-warning-sign-road-angle-driving-thumbnail.png',
    'nom': 'decente dangereuse'
  },
  {
    'img':
        'https://img2.freepng.fr/20180606/ai/kisspng-the-highway-code-traffic-sign-road-warning-sign-5b1885181bfe98.8197242815283335921147.jpg',
    'nom': 'passage a niveaux muni de barrieres'
  },
  {
    'img':
        'https://e7.pngegg.com/pngimages/345/205/png-clipart-road-signs-in-singapore-the-highway-code-traffic-sign-warning-sign-road-sign-driving-triangle-thumbnail.png',
    'nom': 'annonce de feux tricolores'
  },
  {
    'img':
        'https://img1.freepng.fr/20180320/ryq/kisspng-road-signs-in-singapore-the-highway-code-traffic-s-signs-5ab1042bc12d81.3889458315215503797913.jpg',
    'nom': 'debouche sur un quai ou une berge'
  },
  {
    'img':
        'https://img1.freepng.fr/20180423/joe/kisspng-traffic-sign-speed-bump-warning-sign-road-denmark-5ade944c4966c5.0886961615245363963007.jpg',
    'nom': 'dos d\'ane'
  },
  {
    'img':
        'https://e7.pngegg.com/pngimages/616/472/png-clipart-traffic-sign-roadworks-warning-sign-road-angle-text.png',
    'nom': 'risque de chute de pierres'
  },
  {
    'img':
        'https://media.normequip.com/1495874-large_default/panneau-passage-de-cavaliers-a15c.jpg',
    'nom': 'danger passage cavalier'
  },
  {
    'img':
        'https://c8.alamy.com/compfr/2gr4161/inscrivez-avertissement-sur-les-vents-de-l-icone-de-gauche-2gr4161.jpg',
    'nom': 'danger vent lateral'
  },
  {
    'img':
        'https://cdn1.prozon.com/22716-thickbox_default/a23-panneau-traversee-d-une-aire-de-danger-aerien.jpg',
    'nom': 'traverser d\'une air de danger aerien '
  },
  {
    'img':
        'https://media.normequip.com/15476-large_default/panneau-chaussee-particulierement-glissante-a4.jpg',
    'nom': 'danger chausee glissente'
  },
  {
    'img':
        'https://previews.123rf.com/images/alonastep/alonastep1510/alonastep151000040/47423092-panneau-de-signalisation-pour-pi%C3%A9tons-panneau-de-signalisation-passage-pi%C3%A9ton-illustration-de-pannea.jpg',
    'nom': 'attentinon passage pietton'
  },
  {
    'img':
        'https://us.123rf.com/450wm/123vector/123vector1409/123vector140900272/31993867-vector-illustration-de-panneau-de-signalisation-de-triangle-pour-se-m%C3%A9fier-des-pi%C3%A9tons.jpg?ver=6',
    'nom': 'attention endroit frequenter par les enfants'
  },
  {
    'img':
        'https://www.mma.fr/files/live/sites/mmafr/files/Zeroblabla/articles/mon-vehicule/panneau-carrefour-giratoire-300x265.jpg',
    'nom': 'attention sens giratoire'
  },
  {
    'img': 'https://www.proformaroute.fr/wp-content/uploads/2020/11/a14-2.jpg',
    'nom': 'attention danger arbre incliner'
  },
];
List fin = const [
  {
    'img':
        'https://www.usinenouvelle.com/expo/img/panneau-fin-interdiction-de-depasser-b34-008544360-product_zoom.gif',
    'nom': ' fin d\'interdiction de depasement'
  },
  {
    'img':
        'https://www.usinenouvelle.com/expo/img/panneau-fin-interdiction-klaxon-b35-008544380-product_zoom.gif',
    'nom': 'fin d\interdiction d\'utiliser la klacson'
  },
  {
    'img':
        'https://img2.freepng.fr/20180622/pbr/kisspng-panneau-de-signalisation-de-fin-d-interdiction-en-limitations-5b2d7c03079842.2954716315297075230311.jpg',
    'nom': 'fin de la limitation de vitesse de 30KM/h'
  },
  {
    'img':
        'https://media1.panostock.fr/893-large_default/panneau-b31-fin-de-tpit.jpg',
    'nom': 'fin de toutes les interdiction '
  },
  {
    'img':
        'https://www.radiofrance.fr/s3/cruiser-production/2020/10/75e47cb3-3e47-404a-86f3-2c3f95036316/1200x680_panneau_fin_de_voie_reservee_aux_pietons_1.jpg',
    'nom': 'fin de chemin obligatoire pour pietons'
  },
  {
    'img':
        'https://www.rouleraoule.fr/images/cms/1619687517Les%20panneaux%20destines%20aux%20deux%20roues%20C114.png',
    'nom': 'fin de piste obligatoire pour les cycles'
  },
  {
    'img':
        'https://cdn-01.media-brady.com/store/sifr/media/catalog/product/cache/18/image/85e4522595efc69f496374d01ef2bf13/1563992365/s/i/sifr_b43_1_std.lang.all.gif',
    'nom': 'fin de la vitesse obligatoire a 30'
  },
  {
    'img':
        'https://cdn-01.media-brady.com/store/sifr/media/catalog/product/s/i/sifr_b44_1_std.lang.all.gif',
    'nom': 'fin d\'obligation de l\'utilisation des chaines de neiges '
  },
  {
    'img': 'https://www.virages.com/Images/Categorie_A1/B45a_Zoom.gif',
    'nom': 'fin d\'obligation de vois reserver pour les bus '
  },
  {
    'img':
        'https://panneau-de-signalisation.com/101-large_default/panneau-d-obligation-fin-de-chemin-obligatoire-pour-cavaliers-b42.jpg',
    'nom': 'fin chemin obligatoire pour les cavalier'
  },
  {
    'img':
        'https://cdn-01.media-brady.com/store/sifr/media/catalog/product/s/i/sifr_b49_1_std.lang.all.gif',
    'nom': 'fin d\'alllumage des feux obligatoire'
  },
  {
    'img':
        'https://www.preventimark.com/uploads/Aimeos/Signature/Panneau_sortie_une_zone_de_stationnement_interdit_B50a_-B50a_0.png',
    'nom': 'sortie de zone de stationement interdit '
  },
  {
    'img': 'https://www.virages.com/Images/Categorie_A1/28976-200.jpg',
    'nom': 'fin de zone d\'interdictions'
  },
  {
    'img':
        'https://media.normequip.com/21019-large_default/panneau-fin-de-chemin-obligatoire-pour-pietons-b41.jpg',
    'nom': 'fin de chemin obligaoire pour les pietton'
  },
];
List obligation = const [
  {
    'img':
        'https://www.panosur.fr/3556-large_default/contournement-obligatoire-par-la-droite-.jpg',
    'nom': 'contournement obligatoire par la droite'
  },
  {
    'img':
        'https://www.dmcdirect.fr/6430-home_default/panneau-de-signalisation-direction-obligatoire-a-gauche-b21c2.jpg',
    'nom': 'direction obligatoire a gauche a la prochaine intersection '
  },
  {
    'img':
        'https://www.techni-contact.com/ressources/images/produits/zoom/11110654-1.jpg',
    'nom': 'direction obligatoire a droite a la prochaine intersection'
  },
  {
    'img':
        'https://cdn-01.media-brady.com/store/stfr/media/catalog/product/d/m/dmeu_tc40_3a_1_std.lang.all.gif',
    'nom': 'direction obligatoire a la prochaine intersection '
  },
  {
    'img':
        'https://cdn-01.media-brady.com/store/stfr/media/catalog/product/d/m/dmeu_tc40_11_1_std.lang.all.gif',
    'nom': 'allez tout droit est obligatoire'
  },
  {
    'img':
        'https://www.rouleraoule.fr/images/cms/1584086367chaine-neige-obligatoire.png',
    'nom': 'chaine de neige obligatoire '
  },
  {
    'img':
        'https://www.toutelasignaletique.com/1988/kit-ou-panneau-seul-type-routier-piste-obligatoire-pour-les-cycles-ref-b22a.jpg',
    'nom': 'piste obligatoie pour les cycles'
  },
  {
    'img':
        'https://cdn-01.media-brady.com/store/sifr/media/catalog/product/cache/18/image/85e4522595efc69f496374d01ef2bf13/1563992373/s/i/sifr_cib29_1_std.lang.all.gif',
    'nom': 'obligation d\'allumer vos feux '
  },
  {
    'img':
        'https://as2.ftcdn.net/v2/jpg/02/40/93/13/1000_F_240931351_8lCI4XIpf4cYq0fCVXTvd2HmyfNXXRmW.jpg',
    'nom': 'chemin obligatoire pour pietton '
  },
  {
    'img':
        'https://as2.ftcdn.net/v2/jpg/01/24/88/53/500_F_124885327_mnK8Iwo1D6SgFCdjAFZfrm48MnO7CpXp.jpg',
    'nom': 'sense giratoire obligatoire'
  },
  {
    'img':
        'https://www.toutelasignaletique.com/1946/kit-ou-panneau-seul-type-routier-voie-reservee-aux-transports-en-commun-ref-b27.jpg',
    'nom': 'chemin obligatoire pour les bus '
  },
  {
    'img':
        'https://www.signaclic.com/panneau-vitesse-minimale-obligatoire-b25-ig-4338.jpg',
    'nom': 'vitesse minimal obligatoire 30km/h'
  },
  {
    'img':
        'https://cdn-01.media-brady.com/store/sifr/media/catalog/product/s/i/sifr_b22c_1_std.lang.all.gif',
    'nom': 'chemin obligatoire pour cavalier'
  },
  {
    'img':
        'https://www.codeenpoche.fr/static/2e1cfc00984f384f2fa4089bc774d28a/20fa6/panneaux-voie-reservee-vehicules-lents.jpg',
    'nom': 'voie obligatoire pour les vehicule lent '
  },
];
List temporaires = const [
  {
    'img':
        'https://e7.pngegg.com/pngimages/183/55/png-clipart-panneau-d-annonce-de-chaussee-retrecie-en-france-danger-road-sign-in-france-panneau-de-signalisation-d-arret-et-de-stationnement-interdits-en-france-traffic-sign-panneau-de-signalisation.png',
    'nom': 'chemin retrecie temporaire'
  },
  {
    'img':
        'https://img.favpng.com/13/10/25/panneau-de-signalisation-de-circulation-dans-les-deux-sens-en-france-traffic-sign-clip-art-png-favpng-JmB19BBbaXnLWpnJxD476WjKv.jpg',
    'nom': 'circulation dans les deux sens temporaire'
  },
  {
    'img':
        'https://www.clipartmax.com/png/small/123-1230326_traffic-sign-gr-dangerous-curve-ahead-sign.png',
    'nom': 'succession de virages temporaires'
  },
  {
    'img':
        'https://www.clipartmax.com/png/middle/34-343528_inspiring-traffic-signs-clip-art-medium-size-traffic-sign-of-road.png',
    'nom': 'chausee glisente temporaire '
  },
  {
    'img':
        'https://w7.pngwing.com/pngs/457/476/png-transparent-traffic-sign-panneau-de-signalisation-routiere-temporaire-en-france-public-works-panneau-de-signalisation-routiere-en-france-panonceau-de-signalisation-routiere-en-france-canalization-angle-triangle-logo.png',
    'nom': 'traveaux temporaire'
  },
];
List indication = const [
  {
    'img':
        'https://cdn-01.media-brady.com/store/sifr/media/catalog/product/cache/18/image/85e4522595efc69f496374d01ef2bf13/1563992883/s/i/sifr_c5_1_std.lang.all.gif',
    'nom': 'station de taxi '
  },
  {
    'img':
        'https://static.wikia.nocookie.net/routes/images/c/cc/C2-01.gif/revision/latest?cb=20121122222709',
    'nom': 'hopitale eviter le bruit'
  },
  {
    'img':
        'https://media.istockphoto.com/id/1268257891/fr/vectoriel/signe-carr%C3%A9-bleu-de-stationnement-avec-une-lettre-de-capitale-blanche-p.jpg?s=612x612&w=0&k=20&c=qtf43cQpNx0sh9RJBEi62lW98YbRreUYxCOjFLiI4Kg=',
    'nom': 'parc de stationement'
  },
  {
    'img': 'https://www.direct-signaletique.com/I-Autre-8192_459x459-.net.jpg',
    'nom': 'foret facilement inflamable'
  },
  {
    'img':
        'https://e7.pngegg.com/pngimages/996/69/png-clipart-bus-traffic-code-russia-special-regulation-sign-signage-bus-angle-text.png',
    'nom': 'arret autobus'
  },
  {
    'img':
        'https://e7.pngegg.com/pngimages/162/704/png-clipart-traffic-sign-pedestrian-crossing-signage-traffic-code-road-shop-angle-text.png',
    'nom': 'passage pietton'
  },
  {
    'img':
        'https://www.usinenouvelle.com/expo/img/panneau-indication-arret-tramway-c7-008545270-product_zoom.gif',
    'nom': 'arret tramway'
  },
  {
    'img': 'https://prdcoaching.files.wordpress.com/2015/09/dead-end.gif',
    'nom': 'chemin sans issue'
  },
  {
    'img':
        'https://cdn1.prozon.com/22964-thickbox_default/c12-panneau-d-indication-de-circulation-a-sens-unique.jpg',
    'nom': 'circulation a sens unique '
  },
  {
    'img':
        'https://www.usinenouvelle.com/expo/img/panneau-indication-affectation-de-voies-c24a-ex-1-008545370-product_zoom.gif',
    'nom': 'fin '
  },
  {
    'img': 'https://www.virages.com/Images/Categorie_A1/C24aex3_T2.gif',
    'nom': 'indication d\'affectation des vois '
  },
  {
    'img':
        'https://static.wikia.nocookie.net/routes/images/5/5b/C21a_ancien.gif/revision/latest?cb=20200324211731',
    'nom': 'la vois a gauche est sans issue'
  },
  {
    'img':
        'https://www.drapeauxunic.fr/3162-thickbox_default/poste-appel-urgence.jpg',
    'nom': 'poste d\'appel d\'urgence '
  },
  {
    'img': 'https://www.drapeauxunic.fr/3104-home_default/parking-payant.jpg',
    'nom': 'parc de stationement a duree limite avec controle par disque'
  },
  {
    'img': 'https://quiz-code-route.fr/panneaux/CE15a.png',
    'nom': 'poste de ravitaillement en carburant'
  },
  {
    'img':
        'https://www.coursdecode.com/cdc-contents/uploads/2015/10/panneau-indication-C207.png',
    'nom': 'debut autoroute '
  },
  {
    'img': 'https://quiz-code-route.fr/panneaux/C26b.png',
    'nom': 'vois de detresse '
  },
  {
    'img':
        'https://img1.freepng.fr/20180318/ahe/kisspng-disabled-parking-permit-disability-car-park-sign-c-printable-handicap-parking-signs-5aae003cc57bf1.1894205915213527648089.jpg',
    'nom': 'installation accesibles au personnes handicapee '
  },
  {'img': 'https://quiz-code-route.fr/panneaux/CE17.png', 'nom': 'hotel'},
  {
    'img':
        'https://www.alleins.fr/wp-content/uploads/2018/06/zone30_panneau-e1528782314122.png',
    'nom': 'entrée d\'une zone a vitesse limitée'
  },
];

class NewShowcase extends StatelessWidget {
  final String data;
  NewShowcase({required this.data});
  List getList(data) {
    {
      if (data == 'interdiction') {
        verified = interdiction;
      }
      if (data == 'fin d\'obligation et d\'interdiction') {
        verified = fin;
      }
      if (data == 'danger') {
        verified = danger;
      }
      if (data == 'indication') {
        verified = indication;
      }
      if (data == 'obligation') {
        verified = obligation;
      }
      if (data == 'temporaires') {
        verified = temporaires;
      }
      return verified;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('les Plaques '),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        // margin: EdgeInsets.symmetric(vertical: 0, horizontal: 1),
        // width: double.infinity,

        child: GridView.builder(
            itemCount: (getList(data).length),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 0.6, //height
                crossAxisSpacing: 10,
                mainAxisSpacing: 0),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(
                    '/r',
                    arguments: verified[index]['nom'],
                  );
                },
                child: Container(
                  // alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                      vertical: 3.0, horizontal: 5.0),
                  // padding: EdgeInsets.all(5),
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  // // width: double.infinity,
                  decoration: BoxDecoration(
                    // color: Color.fromARGB(255, 255, 17, 0),
                    color: Color.fromARGB(255, 185, 173, 172),
                    ////////////THE FUCKING COLOR /////
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Image.network(
                        verified[index]['img'],
                        fit: BoxFit.cover,
                      ),
                    ),
                    // SizedBox(
                    //   height: 0,
                    // ),
                    Container(
                      // margin:
                      //     EdgeInsets.symmetric(vertical: 11, horizontal: 1),
                      alignment: Alignment.center,
                      child: Text(
                        verified[index]['nom'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    )
                    // Image(image: AssetImage(interdiction[index]['img'])),
                  ]),
                ),
              );
            }),
      ),
    );
  }
}
