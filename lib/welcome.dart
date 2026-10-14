import 'package:bank/SignUp.dart';
import 'package:bank/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class welcome extends StatelessWidget {
  const welcome({super.key});
 Widget Inputfield(
     String text,
     ){
   return  Padding(
     padding: const EdgeInsets.only(left: 55,right: 55),
     child: TextFormField(
       decoration: InputDecoration(
         focusedBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(10),
             borderSide: const BorderSide(
               color: Colors.black38,
               width: 1,
             )
         ),
         hintText: text,
         enabledBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(10),
             borderSide: const BorderSide(
               color: Colors.black38,
               width: 1,
             )
         ),
       ),
     ),
   );
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade400,
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 1),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Text("WELCOME!" ,textAlign: TextAlign.center,
                      style: GoogleFonts.adamina(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1,
                      ),),
                  ),
                  const SizedBox(height: 15,),
                  Container(child: Image.asset('assets/images/statebank.png',height: 250,width: 250,)),
                  const SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0),
                    child: Expanded(
                      child: Container(
                        height: 420,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 35,),
                            Inputfield('Email'),
                            const SizedBox(height: 15,),
                            Padding(
                              padding: const EdgeInsets.only(left: 55,right: 55),
                              child: TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                      borderSide:const BorderSide(
                                        color: Colors.black38,
                                        width: 1,
                                      )
                                  ),
                                 hintText: 'Password',
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.black38,
                                      width: 1,
                                    )
                                  ),
                                ),
                              ),
                            ),

                          const  SizedBox(height: 15,),
                            Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: OutlinedButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>homescreen()));
                              },
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)
                                    ),
                                    side: BorderSide(
                                      color: Colors.blue.shade800,
                                      width: 1,
                                    ),
                                      backgroundColor: Colors.blue.shade800,
                                  ),
                                  child: Text('Login',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white
                                    ),)),
                            ),
                            const SizedBox(height: 35,),
                            InkWell(
                              child: Text('Forgot Password?',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w400,
                                color: Colors.lightBlue.shade300,
                                decoration: TextDecoration.underline,
                                decorationThickness: 1,
                                decorationColor: Colors.lightBlue.shade300
                              ),),
                            ),
                           const  SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                              const  Text('New to BankApps?',),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                                  },
                                  child: Text('Sign Up?',
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.lightBlue.shade300,
                                        decoration: TextDecoration.underline,
                                        decorationThickness: 1,
                                        decorationColor: Colors.lightBlue.shade300
                                    ),),
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),


        ],
      )
    );
  }
}
