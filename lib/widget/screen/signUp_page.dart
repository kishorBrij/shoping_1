import 'package:flutter/material.dart';
import 'package:shoping_1/widget/screen/login_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.black54,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 20),
              child: const Text("Let's Get Started",
                style: TextStyle(fontSize: 35,color: Colors.white),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.only(left: 10),
              margin: const EdgeInsets.only(left: 10,right: 10),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey
              ),
              child: TextFormField(
                style: const TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                decoration: const InputDecoration(
                  labelText: "Name",
                  labelStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.only(left: 10),
              margin: const EdgeInsets.only(left: 10,right: 10),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey
              ),
              child: TextFormField(
                style: const TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                decoration: const InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.white)
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.only(left: 10),
              margin: const EdgeInsets.only(left: 10,right: 10),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey
              ),
              child: TextFormField(
                style: const TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: "Phone No",
                    labelStyle: TextStyle(color: Colors.white)
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.only(left: 10),
              margin: const EdgeInsets.only(left: 10,right: 10),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey
              ),
              child: TextFormField(
                style: const TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                decoration: const InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white)
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.all(10),
              child: const Text('By creating an account , you agree to our terms of service and privacy policy',
                style: TextStyle(color: Colors.white60,fontSize: 16),),
            ),
            const SizedBox(height: 20,),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 10,right: 10),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: const Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
            const SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Row(
                children:  [
                  const SizedBox(width: 30,),
                  const Text("Alerady have an account? ",style: TextStyle(color: Colors.white60,fontSize: 15),),
                  const Text("Log In ",style: TextStyle(color: Colors.white60,fontSize: 15),),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const LoginPage())
                        );
                      },
                      child: const Text("Sign In",style: TextStyle(color: Colors.teal,fontSize: 20),))
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}