import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Trips extends StatelessWidget {
  const Trips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD4D0C5),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Trips',
              style: TextStyle(fontSize: 30, color: Color(0xFF1C2F2D)),
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
              title: Text('Bus Number : 231'),
              subtitle: Text(
                  'Destination : Om-rawaba \nEmpty Seats: 12 \nPrice: 2500 SDG'),
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xFF1C2F2D)),
                onPressed: () {},
                child: Text(
                  'Book',
                  style: TextStyle(color: Colors.white),
                ),
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
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xFF1C2F2D)),
                onPressed: () {},
                child: Text(
                  'Book',
                  style: TextStyle(color: Colors.white),
                ),
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
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xFF1C2F2D)),
                onPressed: () {},
                child: Text(
                  'Book',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              isThreeLine: true,
            ),
          ),
        ],
      ),
    );
  }
}
