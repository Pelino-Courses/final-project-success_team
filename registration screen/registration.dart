import 'package:final_projects_work/login_screen.dart';
import 'package:flutter/material.dart';

class MyRegisterPage extends StatefulWidget {
  const MyRegisterPage({super.key});

  @override
  State<MyRegisterPage> createState() => _MyRegisterPageState();
}

class _MyRegisterPageState extends State<MyRegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFDA5E48),
        body: Padding(
          padding: EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(height: 100),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tech',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text('Me',
                      style: TextStyle(
                          color: Color.fromARGB(255, 11, 11, 30),
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 40),
              Container(

                  // color: Colors.white,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      const Text("Create Account",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(height: 5),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Your Name",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 11, 11, 30),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      const TextField(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          hintText: 'your full name',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          prefixIcon: Icon(Icons.person, color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Email Address",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 11, 11, 30),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      const TextField(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Email Address',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          prefixIcon: Icon(Icons.email, color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Phone Number",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 11, 11, 30),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      const TextField(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          hintText: 'phone number',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          prefixIcon: Icon(Icons.person, color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("password",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 11, 11, 30),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            hintText: ' password',
                            hintStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            prefixIcon: Icon(Icons.lock, color: Colors.white)),
                        obscureText: true,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        obscuringCharacter: "*",
                        autocorrect: false,
                        enableSuggestions: false,
                      ),
                      const SizedBox(height: 5),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("confirm password",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 11, 11, 30),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            hintText: 'confirm password',
                            hintStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            prefixIcon: Icon(Icons.lock, color: Colors.white)),
                        obscureText: true,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        obscuringCharacter: "*",
                        autocorrect: false,
                        enableSuggestions: false,
                      ),
                      const SizedBox(height: 12),
                      Container(
                        width: double.infinity,
                        height: 100,
                        padding: const EdgeInsets.fromLTRB(
                          0,
                          20,
                          0,
                          20,
                        ),
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 8,
                              backgroundColor:
                                  const Color.fromARGB(255, 11, 11, 30),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ),
                    ]),
                  )),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account  ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, '/login');

                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "Login Here",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ]),
          ),
        ));
  }
}
