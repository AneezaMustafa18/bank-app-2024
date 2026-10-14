import 'package:bank/Accounts.dart';
import 'package:bank/welcome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  Widget ContainerItems(
      String text, double price,
      String txt,
      ){
    return   Padding(
      padding: const EdgeInsets.only(left: 15,right: 15),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.blue.shade900,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Text(text,style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,

                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(txt,textAlign: TextAlign.left,style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,

                  ),),
                ),
              ],
            ),
       Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 18),
              child: Text('\$ $price',style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w300,

              ),),
            ),

          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const homescreen()));
              },icon: const Icon(Icons.home,size: 35,),color: Colors.blue.shade800,), label: 'Home'),
          BottomNavigationBarItem(
              icon: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Accounts()));
              },icon: const Icon(Icons.account_box,size: 35,),color: Colors.blue.shade800,), label: 'Account'),
          BottomNavigationBarItem(
              icon: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const welcome()));
              },icon: const Icon(Icons.settings,size: 35,),color: Colors.blue.shade800,), label: 'Setting'),

        ],
      ),
      backgroundColor: Colors.lightBlue.shade800,
      // drawer:  Drawer(
      //   elevation: 9,
      //   backgroundColor: Colors.white,
      //   child: ListView(
      //     padding: EdgeInsets.all(9.0),
      //     children: [
      //       SizedBox(height: 25,),
      //       Container(
      //         height: 40,
      //         width: 100,
      //         margin: EdgeInsets.only(right: 15),
      //         child: Row(
      //           children: [
      //             IconButton(onPressed: (){
      //               Navigator.push(context, MaterialPageRoute(builder:(context)=>homescreen()));
      //             }, icon: Icon(Icons.close)),
      //             Text('Close')
      //           ],
      //         ),
      //       ),
      //       SizedBox(height: 15,),
      //       DrawerHeader(
      //         child: Text(''),
      //         decoration: BoxDecoration(
      //           image: DecorationImage(image: AssetImage('assets/images/userr.png'))
      //         ),
      //
      //
      //       ),
      //       SizedBox(height: 40,),
      //       ListTile(
      //         onTap: (){
      //           Navigator.push(context, MaterialPageRoute(builder:(context)=>homescreen()));
      //         },
      //         leading: Icon(Icons.home,color: Colors.blue.shade800,size: 40,),
      //         title: Text('Home'),
      //       ),
      //       SizedBox(height: 40,),
      //       ListTile(
      //         onTap: (){
      //           Navigator.push(context, MaterialPageRoute(builder:(context)=>homescreen()));
      //         },
      //         leading: Icon(Icons.settings,color: Colors.blue.shade800, size: 40,),
      //         title: Text('Setting'),
      //       ),
      //       SizedBox(height: 40,),
      //       ListTile(
      //         leading: IconButton(onPressed: (){
      //           Navigator.push(context, MaterialPageRoute(builder:(context)=>Accounts()));
      //         }, icon: Icon(Icons.account_box,color: Colors.blue.shade800,size: 40,)),
      //         title: Text('Accounts'),
      //       ),
      //
      //     ],
      //   ),
      //
      // ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0),
        child: ListView(
            children: [
             const SizedBox(height: 10,),
              Image.asset('assets/images/Uuser.png',height: 130,),
            const  SizedBox(height: 10,),
              Text('Your Name',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 28,
                  color: Colors.white,
              fontWeight: FontWeight.w500),),
              Text('your-email@email.com',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w300),),
            const  SizedBox(height: 10,),
              Center(
                child: Container(
                  height: 160,
                width: 290,
                child: Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                    const  SizedBox(height: 15,),
                      Text('Balance',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.w200),),
                      Text('\$ 4,180.20',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 28,
                          color: Colors.lightBlue.shade900,
                          fontWeight: FontWeight.w600),),
                     const  SizedBox(height: 4,),
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
                            child: Text('Transfer',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                              ),)),
                      ),
                    ],
                  ),
                ),
                ),
              ),
              const SizedBox(height: 15,),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  color: Colors.white,
                  child: Expanded(
                    flex: 1,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                                          children: [
                    const  SizedBox(height: 20,),
                      Text('Latest Transactions',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 22,
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.w400),),
                   const   SizedBox(height: 35,),
                      Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          physics: const  BouncingScrollPhysics(),
                          child: Row(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade900,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15,right: 15),
                                    child: Text('Lorem Ipsum Company',style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,

                                    ),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 90),
                                    child: Text("Received Payment",textAlign: TextAlign.left,style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,

                                    ),),
                                  ),
                                ],
                              ),
                             Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 18),
                                child: Text('\$2,030.80',style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,

                                ),),
                              ),

                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 15,),
                      ContainerItems("Auctor Elit Ltd. ", 450.000, "Transfer Money"),
                      const SizedBox(height: 15,),
                      ContainerItems("Auctor Elit Ltd. ", 450.000, "Transfer Money"),
                      const SizedBox(height: 15,),
                      ContainerItems("Auctor Elit Ltd. ", 450.000, "Transfer Money"),
                      const SizedBox(height: 15,),
                      ContainerItems("Auctor Elit Ltd. ", 450.000, "Transfer Money"),
                      const SizedBox(height: 15,),
                      ContainerItems("Auctor Elit Ltd. ", 450.000, "Transfer Money"),const SizedBox(height: 15,), ContainerItems("Auctor Elit Ltd. ", 450.000, "Transfer Money"),
                                          const SizedBox(height: 20,),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 360),
                                              child: InkWell(
                                                  child: Text('View More >>',textAlign: TextAlign.right,
                                                    style: GoogleFonts.poppins(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 14,
                                                      color: Colors.lightBlue.shade300,
                                                    ) ,)),
                                            ),

                                          ],
                      ),
                    ),
                  ),
                ),
              )

            ],
        ),
      ),
    );
  }
}








