import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_p_logic/models/user_model.dart';
import 'package:shared_p_logic/pages/signup_page.dart';

import '../services/pref_service.dart';

class HomePage extends StatefulWidget {
  static const String id = '/home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  void _doSignIn(){
    String email = emailEditingController.text.toString().trim();
    String password = passwordEditingController.text.toString().trim();
    User user = User(email, password);
    Prefs.storeUser(user);
    Prefs.loadUser().then((value) {
      print(value!.email);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        margin: const EdgeInsets.only(top: 90),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: SizedBox(
                  width: 250,
                  height: 250,
                  child: Lottie.asset('assets/lotties/lotti',
                      fit: BoxFit.cover, height: 100, width: double.infinity),
                ),
              ),
              const Text(
                'Welcome back!',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Log in to your existant account of Q Ailure',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      child: TextField(
                        textAlign: TextAlign.left,
                        controller: emailEditingController,
                        decoration: InputDecoration(
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
                        textAlign: TextAlign.left,
                        controller: passwordEditingController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white70,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade200)),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(left: 20, right: 10),
                            child: Icon(
                              CupertinoIcons.lock,
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
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: MaterialButton(
                  color: Colors.blue,
                  height: 60,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(70)),
                  onPressed: () {
                    _doSignIn();
                  },
                  child: const Center(
                    child: Text(
                      'LOG IN',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'or connect using',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                            color: Colors.blue,
                            height: 50,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            onPressed: () {

                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Icon(
                                  Icons.facebook,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'LOG IN',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: MaterialButton(
                            color: Colors.redAccent,
                            height: 50,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Icon(
                                  Icons.telegram,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'LOG IN',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            )),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, SignUpPage.id);
                    },
                    child: const Text(
                      'Sign up',
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
      ),
    );
  }
}
