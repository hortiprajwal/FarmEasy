import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpage/phone_number_screen.dart';
import 'package:url_launcher/url_launcher.dart';

import 'disease_types.dart';
import 'teaminfo.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AboutUsState();
  }
}

class AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TeamInfo()));
            },
            icon: const Icon(Icons.people),
          ),
          IconButton(
            onPressed: () {
              //showAlertDialog(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const PhoneNumberScreen()),
              );
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 110,
              width: width,
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Center(
                    child: CircleAvatar(
                      radius: 50,
                      foregroundColor: Colors.green,
                      backgroundImage: AssetImage('assets/kisan_helper.jpg'),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Ramlal Kisan',
                    style: GoogleFonts.varelaRound(
                        fontSize: 36,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 5.0),
            //   child: ListTile(
            //     onTap: (){
            //
            //     },
            //     contentPadding: const EdgeInsets.all(1.0),
            //     leading: const Icon(Icons.monetization_on,color: Colors.green,),
            //     title: const Text('Budget'),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: ListTile(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CropList()),
                  );
                },
                contentPadding: const EdgeInsets.all(1.0),
                leading: const Icon(Icons.calendar_month,color: Colors.green,),
                title: const Text('Crop Diseases'),
              ),
            ),
            Padding(padding: const EdgeInsets.fromLTRB(10, 8,0,0),
              child:Row(
                children: [
                  const Icon(Icons.phone,color: Colors.green,),
                  const Text('       National Helpline: ',style: TextStyle(fontSize:16,color: Colors.black),),
                  InkWell(
                    onTap:()=>launch("tel://1800-120-4049"),
                    child: const Text('1800-120-4049',style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue,fontSize: 18),),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(padding: const EdgeInsets.fromLTRB(10, 10,0,0),
              child: Row(
                children: [
                  const Icon(Icons.email,color: Colors.green,),
                  const Text('       Email:  ',style: TextStyle(fontSize:16,color: Colors.black),),
                  InkWell(
                    onTap:() async { _launchemailURL('kisanseva@gmail.com');setState(() {
                    });},
                    child: const Text('kisanseva@gmail.com',style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue,fontSize: 18),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchemailURL(String url1) async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: url1,
    );
    String url = params.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not launch $url');
    }
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: const Text("Cancel"),
      onPressed: () {
        Navigator.of(context).pop(false);
      },
    );
    Widget continueButton = TextButton(
      child: const Text("Logout"),
      onPressed: () {},
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Logout"),
      content: const Text("Are you sure? You want to Logout?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
