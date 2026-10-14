
import 'package:bank/home.dart';
import 'package:bank/welcome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Accounts extends StatelessWidget {
  const Accounts({super.key});

  Widget Textfields(String text){
    return TextFormField(
          decoration: InputDecoration(
            hintText: text,
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black87,
                  width: 1,
                  style: BorderStyle.solid,
                ),
              ),
              focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black87))
          ),
        );
  }
  text(String text){
    return   Text(text,textAlign:TextAlign.left,style: GoogleFonts.poppins(fontSize: 16,color: Colors.blue.shade900,
      fontWeight: FontWeight.w300,
    ),);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>homescreen()));
              },icon: const Icon(Icons.home,size: 35,),color: Colors.blue.shade800,), label: 'Home'),
          BottomNavigationBarItem(
              icon: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Accounts()));
              },icon: const Icon(Icons.account_box,size: 35,),color: Colors.blue.shade800,), label: 'Account'),
          BottomNavigationBarItem(
              icon: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>welcome()));
              },icon: const Icon(Icons.settings,size: 35,),color: Colors.blue.shade800,), label: 'Setting'),

        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade800,
        leading: IconButton(onPressed: (){}, icon: const Icon(Icons.menu_sharp,color: Colors.white,size: 35,)),
        title: Row(
          children: [
            IconButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>homescreen()));},
                icon: const Icon(Icons.arrow_back_ios,color: Colors.white,)),
           const SizedBox(width: 40),
            Text('Accounts',style: GoogleFonts.adamina(color: Colors.white),)
          ],
        ),
        titleSpacing: 40,
        actions: [ IconButton(onPressed: (){}, icon: const Icon(Icons.settings,color: Colors.white,size: 35,))],
      ),
      body: SafeArea(child: Padding(padding: const EdgeInsets.only(left: 45,right: 45),
      child: ListView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        children: [
        const SizedBox(height: 20,),
        Center(child: Image.asset('assets/images/Uuser.png',height: 150,width: 150,),),
        const SizedBox(height: 25,),
       text('Your NAME'),
        const  SizedBox(height: 1,),
        Textfields('KARINA BUYS'),
        const SizedBox(height: 5,),
        text('Bank Account'),
        const SizedBox(height: 1,),
        Textfields('00 123 456'),
        const  SizedBox(height: 5,),
        text('Email'),
        const  SizedBox(height: 1,),
        Textfields('Karina_buys12@gmail.com'),
        const  SizedBox(height: 5,),
        text('Password'),
        const SizedBox(height: 1,),
        Textfields('*********'),
        const  SizedBox(height: 5,),
        text('Phone Number'),
        const   SizedBox(height: 1,),
        Textfields('+44 558 257 68 005'),
        const  SizedBox(height: 5,),
        text('Your Address'),
        TextFormField(
          maxLines: 8,
          minLines: 3,
          decoration: const InputDecoration(
              hintText: 'Lorem Ipsum 22street,\nTincidunt ut laoreet\n5N 27T -Lorem ipsum',
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black87,
                  width: 1,
                  style: BorderStyle.solid,
                ),
              ),
              focusedBorder:  OutlineInputBorder(borderSide: BorderSide(color: Colors.black87))
          ),
        ),
       const SizedBox(height: 15,),
        Text('* Lorem Ipsum dolor lorem ipsum dolor sit amet\n lorem ipsum dolor',style: GoogleFonts.poppins(color: Colors.black54,fontWeight: FontWeight.w300,fontSize: 14),),
       const SizedBox(height: 40,),
         SizedBox(
           height: 40,
           width: 80,
           child: MaterialButton(onPressed: (){},
             color: Colors.blue,
             child: Text('Save Changes',style: GoogleFonts.poppins(
               fontWeight: FontWeight.w300,color: Colors.white,fontSize: 14,
             ),) ,),
         )
      ],
      ),
      ),
      ),
    );
  }
}
