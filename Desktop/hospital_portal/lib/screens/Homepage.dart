import 'package:flutter/material.dart';
import 'package:hospital_portal/screens/Hospital.dart';
import 'package:hospital_portal/screens/Registration.dart';
import 'package:hospital_portal/screens/Verification.dart';

class Homepage extends StatefulWidget {
  static const String id = 'Homepage';
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends  State<Homepage>{

  call_page(int value){
    if(value==1)

    if(value==2)
      Navigator.pushNamed(context, Verification.id);
    if(value==3)
      Navigator.pushNamed(context, Hospital.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'),centerTitle: true,
      ),
      drawer: Drawer(child: ListView(
        padding: EdgeInsets.zero,
        children:  <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF01579B),
            ),
            child: Text(
              'Home',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Register'),
            onTap: () {
              Navigator.pushNamed(context, Registration.id);
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Verification'),
            onTap: () {
              Navigator.pushNamed(context, Verification.id);
            },
          ),
          ListTile(
            leading: Icon(Icons.local_hospital),
            title: Text('Hospital'),
            onTap: () {
              Navigator.pushNamed(context, Hospital.id);
            },
          ),
        ],
      ),)
    );
  }
}