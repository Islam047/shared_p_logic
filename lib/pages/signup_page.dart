import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_p_logic/models/signUp_model.dart';

import '../services/pref_service.dart';

class SignUpPage extends StatefulWidget {
  static const String id = '/signUpPage';

  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameEditingController = TextEditingController();
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController phoneEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  TextEditingController passwordConEditingController = TextEditingController();

  void doSignUp() {
    String name = nameEditingController.text.toString().trim();
    String email = emailEditingController.text.toString().trim();
    String phone = phoneEditingController.text.toString().trim();
    String password = passwordEditingController.text.toString().trim();
    String conPassword = passwordConEditingController.text.toString().trim();
    SignUp signUp = SignUp(name, email, phone, password, conPassword);
    Prefs.storeSignUp(signUp);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        height: MediaQuery
            .of(context)
            .size
            .height,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        margin: const EdgeInsets.only(top: 90),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),

                ],
              ),
              SizedBox(height: 30,),
              const Text(
                'Let\'s Get Started!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(
                height: 18,
              ),
              Text(
                'Create an account to Q Allure to get all features',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.grey.shade400),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      child: TextField(
                        controller: nameEditingController,
                        style: const TextStyle(color: Colors.blue),
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          contentPadding:
                          const EdgeInsets.symmetric(vertical: 25),
                          fillColor: Colors.white60,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide:
                              BorderSide(color: Colors.grey.shade200)),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(left: 20, right: 10),
                            child: Icon(
                              CupertinoIcons.person,
                              size: 25,
                            ),
                          ),
                          hintText: 'Name',
                          border: OutlineInputBorder(
                            borderSide:
                            const BorderSide(color: Colors.red, width: 2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      child: TextField(
                        controller: emailEditingController,
                        style: const TextStyle(color: Colors.blue),
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 25),
                          filled: true,
                          fillColor: Colors.white70,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide:
                              BorderSide(color: Colors.grey.shade200)),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(left: 20, right: 10),
                            child: Icon(
                              Icons.email_outlined,
                              size: 25,
                            ),
                          ),
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderSide:
                            const BorderSide(color: Colors.red, width: 2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      child: TextField(
                        controller: phoneEditingController,
                        style: TextStyle(color: Colors.blue),
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 25),
                          filled: true,
                          fillColor: Colors.white70,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.grey.shade200),
                          ),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(left: 20, right: 10),
                            child: Icon(
                              CupertinoIcons.device_phone_portrait,
                              size: 25,
                            ),
                          ),
                          hintText: 'Phone',
                          border: OutlineInputBorder(
                            borderSide:
                            const BorderSide(color: Colors.red, width: 2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      child: TextField(
                        controller: passwordEditingController,
                        style: const TextStyle(color: Colors.blue),
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          contentPadding:
                          const EdgeInsets.symmetric(vertical: 25),
                          filled: true,
                          fillColor: Colors.white70,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.grey.shade200),
                          ),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(left: 20, right: 10),
                            child: Icon(
                              CupertinoIcons.padlock_solid,
                              size: 25,
                            ),
                          ),
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderSide:
                            const BorderSide(color: Colors.red, width: 2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      child: TextField(
                        controller: passwordConEditingController,
                        style: const TextStyle(color: Colors.blue),
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 25),
                          filled: true,
                          fillColor: Colors.white70,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.grey.shade200),
                          ),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(left: 20, right: 10),
                            child: Icon(
                              CupertinoIcons.padlock,
                              size: 25,
                            ),
                          ),
                          hintText: 'Confirm Password',
                          border: OutlineInputBorder(
                            borderSide:
                            const BorderSide(color: Colors.red, width: 2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      height: 70,
                      minWidth: 250,
                      color: Colors.blue,
                      onPressed: () {
                        doSignUp();
                      },
                      child: const Text(
                        'CREATE',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account",
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, SignUpPage.id);
                          },
                          child: const Text(
                            'Login here',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
