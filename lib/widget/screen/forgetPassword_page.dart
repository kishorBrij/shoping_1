import 'package:flutter/material.dart';
import 'package:shoping_1/widget/screen/otp_page.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.black12,
      ),
      body: Column(
        children: [
          const SizedBox(height: 35,),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 20),
            child: const Text("Forgot Password",style: TextStyle(color: Colors.white,fontSize: 33),),
          ),
          const SizedBox(height: 15,),
          Container(
            margin: const EdgeInsets.only(left: 20,right: 10),
            child: const Text("Please, enter your email address.you will receive a link to create a new password via email",
              style: TextStyle(color: Colors.white60,fontSize: 15),),
          ),
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.only(left: 10),
            margin: const EdgeInsets.only(left: 10,right: 20),
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              decoration:  InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black54),
                  borderRadius: BorderRadius.circular(10),
                ),
                // enabledBorder: OutlineInputBorder(
                //   borderSide: const BorderSide(color: Colors.white),
                //   borderRadius: BorderRadius.circular(10),
                // ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black54),
                  borderRadius: BorderRadius.circular(10),
                ),
                fillColor: Colors.grey.shade700,
                filled: true,
                //labelText: "Email",
                hintText: "abc@gmail.com",
                hintStyle: const TextStyle(color: Colors.white),
                //labelStyle: const TextStyle(color: Colors.white)
              ),
            ),
          ),
          const SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OtpPage())
              );
            },
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 20,right: 20),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.teal[200],
                  borderRadius: BorderRadius.circular(10)
              ),
              child: const Text("Send Now",
                style: TextStyle(fontSize: 20,color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}