import 'dart:developer';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:bank/chatbox/messages.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Loginvalidate extends StatefulWidget {
  const Loginvalidate({super.key});


  @override
  State<Loginvalidate> createState() => _LoginvalidateState();
}

class _LoginvalidateState extends State<Loginvalidate> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void validation(){
    if(emailController.text.isEmpty||passwordController.text.isEmpty){
      final snackBar = SnackBar(
        /// need to set following properties for best effect of awesome_snackbar_content
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.red,
        content: AwesomeSnackbarContent(
          title: 'Error!!!',
          message:
          'Please fill all the fields!',

          /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
          contentType: ContentType.failure,
        ),
      );

      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(snackBar);


    }
    else{
      log('Success');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
            const SizedBox(height: 40,),
          Center(child: Image.asset('assets/images/user.png',height: 150,width: 150,)),
          const SizedBox(height: 25,),
          Text('Login Screen',textAlign: TextAlign.center,style: GoogleFonts.adamina(color: Colors.black54,fontSize: 22,fontWeight: FontWeight.w500),),
          const SizedBox(height: 30,),
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              hintText: 'Enter Email',
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.email),
              suffixIconColor: Colors.black45,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black45,
                )
              ),
            ),
            ),
          const SizedBox(height: 15,),
          TextFormField(
            controller: passwordController,
            decoration: const InputDecoration(
              hintText: 'Enter Password',
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.lock),
              suffixIconColor: Colors.black45,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black45,
                  )
              ),
            ),
          ),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell( onTap: (){},
                  child: Text('Forgot Password?',textAlign: TextAlign.left,style: GoogleFonts.poppins(color: Colors.black45,fontWeight: FontWeight.w300,fontSize: 16),)),
              const SizedBox(width: 10,),
              InkWell(onTap: (){},child: Text('SignUp',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blue.shade300,
              decoration: TextDecoration.underline,
              decorationColor: Colors.blue.shade300,
              decorationThickness: 2),),),
            ],
          ),
          const SizedBox(height: 35,),
          MaterialButton(onPressed: (){
            validation();
            Navigator.push(context, MaterialPageRoute(builder: (context)=>messages()));
          },
            color: Colors.blue.shade300,
            minWidth: 140,
            height: 40,
            hoverColor: Colors.blue,
            hoverElevation: 10,
            highlightColor: Colors.blue,
            highlightElevation: 10,
          child: Text('Login',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w300,color: Colors.white60),),)

        ],
      ),),
      ),
    );
  }
}
