import 'package:bank/home.dart';
import 'package:bank/welcome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatelessWidget {
   Signup({super.key});

  Widget Inputfield(
      String text
      ){
    return Padding(
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

  bool? isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade800,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 1.0),
        child: ListView(
          children: [
           const SizedBox(height: 15,),
           Image.asset("assets/images/transaction.png",height: 150,width: 80,),
            const SizedBox(height: 15,),
            Text('Connect to your Bank account' ,textAlign: TextAlign.center,
              style: GoogleFonts.adamina(fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.white) ,),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                height: 600,
                margin: const EdgeInsets.only(left: 0,right: 0,bottom: 0),
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    const SizedBox(height: 35,),
                      Inputfield('Your Name'),
                    const SizedBox(height: 10,),
                    Inputfield('Bank Account'),
                    const SizedBox(height: 10,),
                    Inputfield('Email'),
                    const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 55,right: 55),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.black38,
                            width: 1,
                          )
                      ),
                      hintText: 'password',
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
                    const SizedBox(height: 15,),
                    Text('Use 6 characters with a mix of letters,numbers\n&symbols',textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      color: Colors.lightBlue.shade300,
                      fontSize: 13,
                    ),),
                    const SizedBox(height: 25,),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(
                        children: [
                          Checkbox(value: isChecked, onChanged: null),
                          Text("By Signing up,you agree to Bank's\nTerm of Use &Privacy Policy",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),)
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: OutlinedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const homescreen()));

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
                              child: Text('Sign Up',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white
                                ),)),
                        ),
                        const SizedBox(width: 25,),
                        Text('or' ,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w300),),
                        const SizedBox(width: 30,),
                        Container(
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: OutlinedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>welcome()));
                          },
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                side: BorderSide(
                                  color: Colors.blue.shade800,
                                  width: 1,
                                ),
                                backgroundColor: Colors.white,
                              ),
                              child: Text('Login',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue.shade800,
                                ),)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        const Text('Already Signed up?',),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>welcome()));
                          },
                          child: Text('Login',
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
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
