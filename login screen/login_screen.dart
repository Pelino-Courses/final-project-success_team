import 'package:final_projects_work/otp_screen.dart';
import 'package:final_projects_work/password_recovery.dart';
import 'package:final_projects_work/registration.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.redAccent,
        body: SingleChildScrollView(
          child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Tech',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50.0,
                          color: Colors.white),
                    ),
                    Text(
                      'Me',
                      style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    margin: const EdgeInsets.fromLTRB(5.0, 10, 0, 5),
                    height: 350.0,
                    width: 270.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 20, left: 75, right: 50),
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30.0),
                                ),
                              )
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Text(
                                  'Username',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 200,
                            height: 30.0,
                            child: TextField(
                              obscureText: false,
                              decoration: InputDecoration(
                                  hintText: "Enter Your User Name",
                                  prefixIcon: Icon(
                                    Icons.person,
                                    size: 20,
                                  )),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Text(
                                  'Password',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 200,
                            height: 20.0,
                            child: TextField(
                              obscureText: false,
                              decoration: InputDecoration(
                                  hintText: "Enter Your Password",
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    size: 17,
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8, left: 100.0, right: 0),
                            child: Row(
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PasswordRecovery()));
                                    },
                                    child: const Text(
                                      'Forgot password',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54),
                                    ))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(padding: const EdgeInsets.only(top: 5)),
                                SizedBox(
                                  width: 200.0,
                                  height: 20.0,
                                  child: ElevatedButton(
                                    child: Text('Log In'),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const MyOtpPage()));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        onPrimary: Colors.white,
                                        primary: Color(0XFFb14a37)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Divider(
                            height: 10.0,
                            color: Colors.black,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 15.0, left: 20.0),
                                child: Image.asset(
                                  'images/github-sign.png',
                                  width: 50.0,
                                  height: 40.0,
                                ),
                                width: 50.0,
                                height: 40.0,
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 15.0, left: 0.0),
                                child: Image.asset(
                                  'images/twitter.png',
                                  width: 50.0,
                                  height: 50.0,
                                ),
                                width: 50,
                                height: 50,
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                    top: 15.0, left: 0.0, right: 20),
                                child: Image.asset(
                                  'images/gmail.png',
                                  width: 50.0,
                                  height: 40.0,
                                ),
                                width: 50.0,
                                height: 40.0,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'not yet a member?',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MyRegisterPage()));
                          },
                          child: const Text(
                            'Sign Up',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.black),
                          ))
                    ],
                  ),
                )
              ])),
        ));
  }
}
