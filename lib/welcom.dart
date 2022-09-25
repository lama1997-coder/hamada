import 'package:booking/admin_tips.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Login.dart';

class Welcom extends StatelessWidget {
  const Welcom({Key? key}) : super(key: key);

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
                  'Welcom to',
                  style: TextStyle(color: Color(0xFF1C2F2D), fontSize: 30),
                ),
              ),
              Text(
                'MyBus',
                style: TextStyle(color: Color(0xFF1C2F2D), fontSize: 120),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width / 3.3,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                height: MediaQuery.of(context).size.height / 12,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF1C2F2D)),
                  ),
                  child: Text(
                    'Admin',
                    style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push<void>(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => AdminTrips(),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: 3,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '  OR  ',
                    style: TextStyle(color: Color(0xFF1C2F2D), fontSize: 20),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: 3,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                height: MediaQuery.of(context).size.height / 12,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF1C2F2D)),
                  ),
                  child: Text(
                    'Passenger',
                    style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push<void>(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => Login(),
                        ));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
