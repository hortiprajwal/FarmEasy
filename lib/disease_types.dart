import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'disease_detail.dart';

class CropList extends StatefulWidget {
  const CropList({Key? key}) : super(key: key);

  @override
  _CropListState createState() => _CropListState();
}

class _CropListState extends State<CropList> {

  List<Crop> soils = [
    Crop(title: 'Bacteria',
        image: Image.asset('assets/crop/bacteria.jpg',fit: BoxFit.fill,),
        index: 0),
    Crop(title: 'Fungi',
        image: Image.asset('assets/crop/fungi.jpg',fit: BoxFit.fill,),
        index: 1),
    Crop(title: 'Nematodes',
        image: Image.asset('assets/crop/nematode.jpg',fit: BoxFit.fill,),
        index: 2),
    Crop(title: 'Virus',
        image: Image.asset('assets/crop/viru.jpg',fit: BoxFit.fill,),
        index: 3),
    Crop(title: 'Parasitic Plants',
        image: Image.asset('assets/crop/parasitic.jpg',fit: BoxFit.fill,),
        index: 4),
  ];

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Scaffold(
          backgroundColor: const Color(0xff00917C),
          appBar: AppBar(
            title: Text(
                'Types of Diseases',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 30.0,
                )
            ),
            backgroundColor: Colors.white38,
            elevation: 0.0,
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: soils.map((soil) {
                return CropCard(crop: soil);
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
class Crop{
  String title;
  Image image;
  int index;

  Crop({required this.title,required this.image,required this.index});

}

class Detail{
  String name;
  String about;
  String found;
  String character;
  String crop;
  Image photo;

  Detail({required this.name, required this.about, required this.found, required this.character, required this.crop, required this.photo});

}