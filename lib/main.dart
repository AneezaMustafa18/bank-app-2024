import 'package:bank/Accounts.dart';
import 'package:bank/SignUp.dart';
import 'package:bank/calculator.dart';
import 'package:bank/chatScreen/login.dart';
import 'package:bank/chatbox/loginauth.dart';
import 'package:bank/chatbox/messages.dart';
import 'package:bank/chatbox/signupauth.dart';
import 'package:bank/formValidation.dart';
import 'package:bank/home.dart';
import 'package:bank/loginvalidation.dart';
import 'package:bank/mypractice.dart';
import 'package:bank/prac1.dart';
import 'package:bank/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: messages(),
    );
  }
}




