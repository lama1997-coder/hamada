import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Edit extends StatelessWidget {
  Edit(this.number, this.distination, this.empty_seats, this.price);
  final String number, distination, empty_seats, price;

  @override
  Widget build(BuildContext context) {
    final _EditformKey = GlobalKey<FormState>();
    final busNumberController = TextEditingController();
    final distenationController = TextEditingController();
    final emptySeatsController = TextEditingController();
    final priceController = TextEditingController(); /////////////

    return Scaffold(
        backgroundColor: Color(0xffD4D0C5),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 250),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 200.0),
                      child: Text(
                        'Edit',
                        style:
                            TextStyle(fontSize: 70, color: Color(0xFF1C2F2D)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Form(
                        key: _EditformKey,
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
                                hintText: '$number',
                                labelText: '$number',
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Bus number';
                                }
                                return null;
                              },
                              controller: busNumberController,
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
                                hintText: '$distination',
                                labelText: '$distination',
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'enter the destination';
                                }
                                return null;
                              },
                              controller: distenationController,
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
                                hintText: '$empty_seats',
                                labelText: '$empty_seats',
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'enter the empty seats number';
                                }
                                return null;
                              },
                              controller: emptySeatsController,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2, color: Color(0xFFBA8445)),
                                ),
                                hintText: '$price',
                                labelText: '$price',
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter the price';
                                }
                                return null;
                              },
                              controller: busNumberController,
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
                                child: Text(
                                  'Save',
                                  style: TextStyle(fontSize: 20),
                                ),
                                onPressed: () {
                                  if (_EditformKey.currentState!.validate()) {}
                                },
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
