import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'disease_page.dart';
import 'disease_types.dart';

// ignore: must_be_immutable
class CropCard extends StatelessWidget {
  // const SoilCard({
  //   Key? key,
  // }) : super(key: key);

  final Crop crop;
  CropCard ({Key? key, required this.crop}) : super(key: key);

  List<Detail> details = [
    Detail(name: 'Bacteria',
        about: 'Among the most common infections in agriculture are crop diseases caused by bacteria. In this regard, the prevention and control of this kind of disease are pretty tricky.To infect the causal agent needs to get into the culture’s tissue. It occurs mainly through damaged areas, such as caused by agricultural tools, insects (fleas), or simply unfavorable weather conditions (dust, wind, heavy rain). But bacteria can also infect plants through natural holes or glands (for example, which secrete nectar).Another feature of bacterial crop diseases is that causal agents, once in a plant or soil, can remain dormant for a long time until favorable conditions arise for them. First of all, significant temperature fluctuations and high levels of humidity act as catalysts for bacterial activity.',
        found: 'The main bacterial disease indications include vascular wilting, necrosis, soft rot and tumor.Although this type of plant disease can be identified due to its pronounced symptoms, identifying a specific causal agent requires laboratory methods.',
        character: 'Granville wilt exposes itself in growth retardation, wilting of the high culture’s part, and the death of roots.\n\nFire blight symptoms include necrotic weeping ulcers, wilting and rolling of leaves, while the dried parts of a plant do not fall off.\n\nWildfire of tobacco is widespread in the world and shows itself as yellowish-green spots on leaves.',
        crop: 'Preventive measures may include using pathogen-free seeds produced in drought-prone regions, hot water for seed treatment, soil solarization, control of plant diseases with germicidal compounds of seeds. Also, crop diseases can be prevented by spraying. Of course, sanitary measures are imperative, which include weed control, sterilization of tools, proper waste disposal, and avoidance of cultivation under conditions when leaves are wet.',
        photo: Image.asset('assets/crop/bacteria.jpg',fit: BoxFit.fill,)),
    Detail(name: 'Fungi',
        about: 'Pathogenic fungi are the most typical agricultural problem. According to research, this plant disease type destroys about a third of all food crops every year. In this regard, this problem is severe both from a humanitarian and economic point of view. Like bacterial crop diseases, these infections affect plants mainly through wounds, stomata, and water pores. Also, fungal spores are often carried by gusts of wind.',
        found: 'Often, a fungal infection is expressed in local or general necrosis. Also, crop diseases caused by fungi can interfere with the average growth or contribute to its abnormal burst, called hypertrophy. Other crop diseases symptoms include:  spots on leaves, exfoliation, rot, anthracnose, ulcers, curls of leaves and warts.',
        character: 'The list of crop diseases caused by fungi is pervasive, so that we will limit ourselves to just a list of some of the most common examples of crop plant diseases: \n\nLate blight of potato is expressed by dark green, purple or black lesions with white mold around the edges.\n\nBlack stem rust of wheat is a dangerous disease that mainly affects cereals. It is expressed in the appearance of rust-colored sori on a plant.\n\nSymptoms of Coffee rust are powdery yellow-orange spots with a brown center on the lower part of leaves.',
        crop: 'Preventive measures to check crop plant diseases caused by fungi are pretty varied. Key management actions include destroying plant matter containing dangerous fungi, using healthy seeds, regular crop rotation, chemical, and biological fungicides.',
        photo: Image.asset('assets/crop/fungi.jpg',fit: BoxFit.fill,)),
    Detail(name: 'Nematodes',
        about: 'Nematodes are parasitizing plants roundworms, which usually cannot be seen without special equipment. They live in the soil, and therefore mainly affect roots, tubers, and bulbs. There are over 4100 dangerous nematode species.',
        found: 'Essentially, nematodes feed by sucking juices from plants. Because of this, plants affected by these parasites often appear dried out, as if they are suffering from drought. Other symptoms are also similar: yellowing; growth retardation; lack of response to fertilizers and water; the gradual general decline of a plant; reduction or even destruction of root systems.',
        character: 'Diseases directly depend on the type of nematodes: Fusiform thickening of the stems is provoked by stem worms. The disease is expressed in the deformation of leaves, swelling of petioles, and the appearance of dark spots on tubers. Aphelenchoides, a disease of rice, is provoked by Aphelenchoides besseyi. Disease marks are blemishes on the tops of leaves, lack of grains, and culture depletion. The corresponding nematode Tylenchulus semipenetrans cause serious citrus diseases. It is characterized by the gradual death of not only leaves but also branches.',
        crop: 'Parasite control involves a wide range of activities. In particular, crop rotation, improving crop disease resistance, and soil treatment with appropriate fumigants with nematicides are effective measures. You can also destroy nematodes and their eggs with hot water (about 50°C/120°F). However, this method of controlling crop diseases requires accuracy. You should adjust the watering time according to the temperature to not harm the plants themselves. Measures that promote plant growth are practical against individual nematodes: heavy mulch, fertigation, watering in drought, and summer and autumn fallow.',
        photo: Image.asset('assets/crop/nematode.jpg',fit: BoxFit.fill,)),
    Detail(name: 'Virus',
        about: 'The most minor but most critical plant enemies are viruses and viroids (subviral contagious agents). After infection, it is almost impossible to save a plant. Therefore the effect of plant diseases on crop production is of critical importance throughout the world. In most cases, the infection spreads as a result of healthy plants with sick contact. Viruses can also spread through vegetative reproduction, through seeds, pollen, and insects. But viruses most often spread through the soil.',
        found: 'The symptoms of crop diseases caused by virus are usually divided into four types: \n'
        '1.malformations, such as abnormal growth of shoots,\n 2.distortion of leaves and flowers'
        '\n3.necrosis, wilting and the appearance of annular stripes and spots'
        '\n4.dwarfism, growth retardation of both individual parts and the whole plant'
        'discoloration, e.g. yellowing, and vein clearing.',
        character: 'Among the common examples of viral diseases in crop plants: Tobacco mosaic manifests in dwarfism and mosaic-like patterns on leaves. The disease is widespread throughout the world and can have significant economic consequences. Tomato spotted wilt is accompanied by the appearance and growth of necrotic yellow rings that gradually turn reddish-brown. Potato spindle tuber inhibits plant growth, tubers become fusiform and shrink.',
        crop: 'Unlike previous infections, most vegetable crop disease caused by viruses is extremely difficult to defeat, often impossible. Therefore, control, in this case, should be as effective as possible. Among the most common measures is the cultivation of resistant crops, indexing, determining the absence or virus presence that is not mechanically transmitted. The plant under study is grafted onto an indicator plant, which develops corresponding symptoms in the virus presence. Unfortunately, sometimes it is necessary to destroy infected cultures, and if large agricultural areas are affected, even to introduce quarantine to save the rest of the crop yield.',
        photo: Image.asset('assets/crop/viru.jpg',fit: BoxFit.fill,)),
    Detail(name: 'Parasitic Plants',
        about: 'Parasitic plants are among the most dangerous plant pests in the world. With the help of particular organs, these plants settle in a host plant and satisfy at the expense of it (most often its vascular system). Although many parasites only weaken their “prey”, some can kill a plant and pose a severe economic threat to agriculture. Depending on the species, parasites can attach from one to several dozen plant species.',
        found: 'Today, there are about 400 parasitic plant species that have a substantial impact on the ecosystem in which they exist. Let’s look at a few common examples.',
        character: 'Mistletoe (Viscaceae): This semi-parasitic plant is widely represented throughout the world and is evergreen. As a parasite, mistletoe can exist on a significant number of plant species. It spreads thanks to special seeds that stick to birds and are carried with them to other plants. These seeds germinate through the host plant bark and connect to its food system. \n\nCuscuta spp: Cuscuta spp. is a parasitic bindweed plant, which is very dangerous for various plants. It actively spreads, disrupts the metabolism of host plants, reduces productivity, and often leads to the death of plants. Moreover, Cuscuta spp. can be a carrier of viral plant and animal diseases. Because of all these features, the weed is a quarantine object. \n\nOrobanche spp: It is a dangerous root parasite without green leaves that cannot photosynthesize, and is utterly dependent on a host. For seed germination of Orobanche spp., it is required that a suitable plant is planted in the soil. Then the weed will attach to its roots and begin to receive ready-made food. The parasite leaves up to 100,000 seeds. They remain viable in the ground for over ten years while waiting for a host. All it makes Orobanche spp. a dangerous pest. \n\nStriga spp: This group of parasitic plants is mainly found in tropical and subtropical regions and belongs to quarantine plants. In African countries, they are classified as a pandemic since Striga spp. can destroy up to 100 percent of a plant and cause irreparable economic damage. Primarily, this herb infects cereals but can also parasitize other plants, including sugar cane. It’s spread through seeds, growing together when ripe with the root system of a host plant. These parasites are very tenacious, so re-planting of a previously infected area is possible after nine years. In regions dependent on agriculture, the Striga spp. can even lead to the migration of people.',
        crop: 'There are different ways of pest control. One of them is “suicidal germination,” cultivating the soil to create favorable conditions for a parasite. In the absence of a host, the germinated seeds will die. Also, farmers actively apply herbicides to resistant crops, which prevents parasites from attaching to them. However, these preparations are pretty expensive. Therefore, it is often necessary to use manual weeding and rotation of crops that are not hosts. However, the most helpful remedy remains the use of naturally sustainable plants.',
        photo:Image.asset('assets/crop/parasitic.jpg',fit: BoxFit.fill,)),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12.0, 2.0, 12.0, 2.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 10.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)
          ),
          color: Colors.green,
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    crop.title,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SizedBox(
                    height: 175,
                    width: 300,
                    child: crop.image
                ),

                const SizedBox(
                  height: 5.0,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(4.0,4.0,4.0,20.0),
                ),
              ],
            ),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => DiseasePage(detail: details[crop.index],)),
              );
            },
          ),
        ),
      ),
    );
  }
}