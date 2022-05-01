// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'disease_types.dart';

class DiseasePage extends StatelessWidget {
  final Detail detail;
  const DiseasePage({required this.detail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00917C),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          detail.name,
          style: GoogleFonts.poppins(
            fontSize: 30.0,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white38,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12.0, 2.0, 12.0, 2.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  width: 350,
                  child: detail.photo,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Card(
                  elevation: 10.0,
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          'About:',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                        child: Text(
                          detail.about,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 15.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Card(
                  elevation: 10.0,
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          'Symptoms:',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                        child: Text(
                          detail.found,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 15.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Card(
                  elevation: 10.0,
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          'Common Diseases:',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                        child: Text(
                          detail.character,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 15.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Card(
                  elevation: 10.0,
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          'Control Measures:',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                        child: Text(
                          detail.crop,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 15.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}