import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loginpage/navbar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loginpage/navy_bottom_bar.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({Key? key}) : super(key: key);

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpCodeController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  String verificationIDReceived = "";

  bool otpCodeVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.teal.shade100,
      appBar: AppBar(
        title: const Text('Welcome to FarmEasy'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        elevation: 0.0,
      ),
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                foregroundColor: Colors.green,
                backgroundImage: AssetImage('assets/kisan_helper.jpg'),
              ),
              const Text(
                'Login using Phone',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextField(
                controller: phoneController,
                decoration: const InputDecoration(
                  labelText: "Phone",
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(
                height: 10,
              ),
              Visibility(
                visible: otpCodeVisible,
                child: TextField(
                  controller: otpCodeController,
                  decoration: const InputDecoration(
                    labelText: "Verification Code",
                  ),
                ),
              ),
              const SizedBox(),
              ElevatedButton(
                onPressed: () {
                  if (otpCodeVisible) {
                    verifyCode();
                  } else {
                    verifyNumber();
                  }
                },
                child: Text(otpCodeVisible ? "Login" : "Verify"),
              )
            ],
          ),
        ),
      ),
    );
  }

  void verifyNumber() {
    auth.verifyPhoneNumber(
        phoneNumber: phoneController.text,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential).then((value) {
            print("You are logged in successfully");
          });
        },
        verificationFailed: (FirebaseAuthException exception) {
          print(exception.message);
        },
        codeSent: (String verificationID, int? resendToken) {
          verificationIDReceived = verificationID;
          otpCodeVisible = true;
          setState(() {});
        },
        codeAutoRetrievalTimeout: (String verificationID) {});
  }

  void verifyCode() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationIDReceived,
        smsCode: otpCodeController.text);

    await auth.signInWithCredential(credential).then((value) {
      print("You are signed in successfully");
      Fluttertoast.showToast(
          msg: "You are logged in successfully",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const NavBar()),
      );
    });
  }
}
