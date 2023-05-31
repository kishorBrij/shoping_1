import 'package:flutter/material.dart';
import 'package:shoping_1/widget/screen/forgetPassword_page.dart';
import 'package:shoping_1/widget/screen/navigation_page.dart';
import 'package:shoping_1/widget/screen/signUp_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Form(
        key: _formKey,
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(top: 80, left: 20),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Log In",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "enter your email or phone number for signing in.",
                    style: TextStyle(color: Colors.white60),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10, top: 10),
                  height: 60,
                  width: double.infinity,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black54),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black54),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fillColor: Colors.grey.shade700,
                      filled: true,
                      hintText: "Phone No",
                      hintStyle: const TextStyle(color: Colors.white),
                      //labelStyle: const TextStyle(color: Colors.white)
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter your  phone no";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    children: [
                      const Text(
                        "Switch to email",
                        style: TextStyle(color: Colors.white60, fontSize: 15),
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const ForgotPassword()));
                        },
                        child: Text(
                          "Forgot your password?",
                          style:
                          TextStyle(color: Colors.teal[100], fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Login();
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(right: 10),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.teal[100]),
                    child: const Text(
                      "Sign in",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      const Text(
                        "if you haven't an account? ",
                        style: TextStyle(color: Colors.white60),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUp()));
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.teal[100], fontSize: 20),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void Login() {
    Navigator.push(
        context, MaterialPageRoute(builder: (_) => const NavigationPage()));
  }

}
