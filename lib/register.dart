import 'package:booking/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'helpers/db_helper.dart';
import 'main.dart';
import 'models/user.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _RegisterformKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final password2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffD4D0C5),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 75.0),
                    child: Text(
                      'Register',
                      style: TextStyle(fontSize: 70, color: Color(0xFF1C2F2D)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Form(
                      key: _RegisterformKey,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2, color: Color(0xFFBA8445)),
                              ),
                              hintText: 'username',
                              labelText: 'Username',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            controller: usernameController,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2, color: Color(0xFFBA8445)),
                              ),
                              hintText: 'Pawword',
                              labelText: 'password',
                            ),
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value.length <= 5) {
                                return 'Password length must be 6 or more';
                              }
                              return null;
                            },
                            controller: passwordController,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2, color: Color(0xFFBA8445)),
                              ),
                              hintText: 'Confirm Passord',
                              labelText: 'Confirm Password',
                            ),
                            validator: (value) {
                              if (value != passwordController.text) {
                                return 'Passwords are not matched';
                              }
                              return null;
                            },
                            controller: password2Controller,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.height / 3,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFF1C2F2D)),
                              ),
                              child: Text('Sign Up'),
                              onPressed: () {
                                if (_RegisterformKey.currentState!.validate()) {
                                  print(UserModel(
                                    username: usernameController.text,
                                    password: passwordController.text,
                                  ).toString()+'gggggggggggggggggggg');

                                  DBHelper.saveUser(UserModel(
                                    username: usernameController.text,
                                    password: passwordController.text,
                                  ));
                                  Navigator.push<void>(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                          Login(),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account ? ',
                        style: TextStyle(fontSize: 18),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push<void>(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) => Login(),
                              ),
                            );
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 18, color: Color(0xFFBA8445)),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
