import 'package:bank/mypractice.dart';
import 'package:flutter/material.dart';


final _formKey = GlobalKey<FormState>();
class formvalidate extends StatefulWidget {
  const formvalidate({super.key});

  @override
  State<formvalidate> createState() => _formvalidateState();
}

class _formvalidateState extends State<formvalidate> {
  final TextEditingController email = TextEditingController();
 final TextEditingController password = TextEditingController();
 String? validateEmail(String? email){
   RegExp emailRegex = RegExp("r^[\w\.-]+@[\&{1,2,3}(2,3)*-?\$");
   final isEmailValid = emailRegex.hasMatch(email ??'');
   if(!isEmailValid){
     return 'Please enter a valid email';
   }
   return null;
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(padding: EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 40,),
              Center(child: Text('Login Screen',style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold),)),
              SizedBox(height: 35,),
              TextFormField(
                validator: (email) =>email!.length <8? 'Please enter valid email' : null,
                controller: email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email,color: Colors.black,)
                ),
              ),
              SizedBox(height: 45,),
              TextFormField(
                keyboardType: TextInputType.text,
                validator: (password) =>password!.length <8? 'Password should be atleast 8 characters' : null,
                controller: password,
                obscureText: true,

                decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock,color: Colors.black,)
                ),
              ),

              SizedBox(height: 25,),
              MaterialButton(onPressed: (){
                _formKey.currentState!.validate();
                // Navigator.push(context, MaterialPageRoute(builder: (context)=> Mypractice()));
              },
              color: Colors.blue.shade500,
                minWidth: 50,
              child: Text('LOGIN',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white70),),)

            ],
          ),
        ) ,)),
    );
  }
}
