import 'package:booking/edit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AdminTrips extends StatelessWidget {
  const AdminTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD4D0C5),
      body: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 20, bottom: 20),
              child: Row(
                children: [
                  Text(
                    'Trips',
                    style: TextStyle(fontSize: 60, color: Color(0xFF1C2F2D)),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(top: 35),
                    child: RawMaterialButton(
                      onPressed: () {},
                      elevation: 2.0,
                      fillColor: Color(0xFF1C2F2D),
                      child: Icon(
                        Icons.add,
                        size: 15.0,
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(15.0),
                      shape: CircleBorder(),
                    ),
                  )
                ],
              )),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
            child: ListTile(
              leading: Icon(
                Icons.person,
                size: 50,
                color: Color(0xFF1C2F2D),
              ),
              title: Text('Bus Number : 231'),
              subtitle: Text(
                  'Destination : Om-rawaba \nEmpty Seats: 12 \nPrice: 2500 SDG'),
              trailing: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push<void>(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              Edit('231', 'Om-rawaba', '12', '2500 SDG'),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.edit,
                      color: Color(0xFF1C2F2D),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.delete,
                      color: Color(0xFF1C2F2D),
                    ),
                  ),
                ],
              ),
              isThreeLine: true,
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
            child: ListTile(
              leading: Icon(
                Icons.person,
                size: 50,
                color: Color(0xFF1C2F2D),
              ),
              title: Text('Bus Number : 98'),
              subtitle: Text(
                  'Destination : Adammer \nEmpty Seats: 10 \nPrice: 3200 SDG'),
              trailing: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push<void>(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              Edit('98', 'Adammer', '10', '3200 SDG'),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.edit,
                      color: Color(0xFF1C2F2D),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      //call your onpressed function here
                      print('Button Pressed');
                    },
                    child: Icon(
                      Icons.delete,
                      color: Color(0xFF1C2F2D),
                    ),
                  ),
                ],
              ),
              isThreeLine: true,
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
            child: ListTile(
              leading: Icon(
                Icons.person,
                size: 50,
                color: Color(0xFF1C2F2D),
              ),
              title: Text('Bus NO. :  110'),
              subtitle:
                  Text('Destination : Kosty \nEmpty seasts:  8 \nPrice:  3200'),
              trailing: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push<void>(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              Edit('110', 'Kosty', '8', '3200 SDG'),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.edit,
                      color: Color(0xFF1C2F2D),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      //call your onpressed function here
                      print('Button Pressed');
                    },
                    child: Icon(
                      Icons.delete,
                      color: Color(0xFF1C2F2D),
                    ),
                  ),
                ],
              ),
              isThreeLine: true,
            ),
          )
        ],
      ),
    );
  }
}
