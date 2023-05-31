import 'package:flutter/material.dart';
import 'package:shoping_1/widget/screen/navigation_page.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.black54,
      ),
      body: Column(
        children: [
          const SizedBox(height: 30,),
          Container(
            alignment: Alignment.center,
            child: const Text("Verification Code",style: TextStyle(
                color: Colors.white,
                fontSize: 30
            ),),
          ),
          const SizedBox(height: 15,),
          Container(
            alignment: Alignment.center,
            child: const Text("we sent you a code to verify your phone number",style: TextStyle(
                color: Colors.white60,
                fontSize: 15
            ),),
          ),
          const SizedBox(height: 35,),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const Text("1",style: TextStyle(color: Colors.teal,fontSize: 25),),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const Text("2",style: TextStyle(color: Colors.teal,fontSize: 25),),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 30),
                  child: const Text("3",style: TextStyle(color: Colors.teal,fontSize: 25),),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 30),
                  child: const Text("4",style: TextStyle(color: Colors.teal,fontSize: 25),),
                ),
              ),
            ],
          ),
          const SizedBox(height: 35,),
          Container(
            alignment: Alignment.center,
            child: const Text("00:58",style: TextStyle(
                color: Colors.teal,
                fontSize: 30
            ),),
          ),
          const SizedBox(height: 35,),
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NavigationPage())
              );
            },
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 10,left: 10),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.teal[100]),
              child: const Text(
                "Confirm",
                style: TextStyle(color: Colors.white,fontSize: 20),
              ),
            ),
          ),
          const SizedBox(height: 15,),
          Container(
            alignment: Alignment.center,
            child: const Text("I don't recive a code!",style: TextStyle(
                color: Colors.white60,
                fontSize: 15
            ),),
          ),
          const SizedBox(height: 10,),
          Container(
            alignment: Alignment.center,
            child: const Text("Resend",style: TextStyle(
                color: Colors.white60,
                fontSize: 18
            ),),
          ),

        ],
      ),
    );
  }
}