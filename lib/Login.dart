import 'package:booking/register.dart';
import 'package:booking/trips.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '/helpers/db_helper.dart';

class Login extends StatefulWidget {
  final bool admin;
  const Login({Key? key,this.admin=false}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _LoginformKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final PasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD4D0C5),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 200.0),
                child: Text(
                  'Login',
                  style: TextStyle(color: Color(0xFF1C2F2D), fontSize: 50),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width / 3.3,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(
                    key: _LoginformKey,
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
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFFBA8445), width: 2),
                            ),
                            hintText: 'password',
                            labelText: 'Password',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Passord';
                            }
                            return null;
                          },
                          controller: PasswordController,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.height / 3,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFF1C2F2D)),
                            ),
                            child: Text('Login'),
                            onPressed: () {
                              if (usernameController.text.isEmpty ||
                                  PasswordController.text.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content:
                                        Text('Enter username and password'),
                                    backgroundColor: Colors.red,
                                  ),
                                );
                                return;
                              }
                              DBHelper.getUser(
                                usernameController.text,
                                PasswordController.text,
                              );

                              if (DBHelper.loggedInUser == null) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Wrong username or Password'),
                                    backgroundColor: Colors.red,
                                  ),
                                );
                              } else {
                                //
                                Navigator.push<void>(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) => Trips(),
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push<void>(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) => Register(),
                                ),
                              );
                            },
                            child: const Text(
                              'Register Now',
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ))
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
