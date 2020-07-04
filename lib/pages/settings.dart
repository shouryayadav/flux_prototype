import 'package:flutter/material.dart';

import '../bloc.navigation_bloc/navigation_bloc.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget with NavigationStates {
  static final String path = "lib/src/pages/settings/settings1.dart";

  @override
  _SettingsOnePageState createState() {
    return _SettingsOnePageState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _SettingsOnePageState extends State<SettingsPage> {
  bool _dark;

  @override
  void initState() {
    super.initState();
    _dark = false;
  }

  Brightness _getBrightness() {
    return _dark ? Brightness.dark : Brightness.light;
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      isMaterialAppTheme: true,
      data: ThemeData(
        brightness: _getBrightness(),
      ),
      child: Scaffold(
        backgroundColor: _dark ? null : Colors.grey.shade200,
        appBar: AppBar(
          elevation: 0,
          brightness: _getBrightness(),
          iconTheme: IconThemeData(color: _dark ? Colors.white : Colors.black),
          backgroundColor: Colors.transparent,
          title: Text(
            '     Settings',
            style: TextStyle(color: _dark ? Colors.white : Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.wb_sunny),
              onPressed: () {
                setState(() {
                  _dark = !_dark;
                });
              },
            )
          ],
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Card(
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.purple[900],
                    child: ListTile(
                      onTap: () {
                        //open edit profile
                      },
                      title: Text(
                        "Shourya Yadav",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/dp.jpeg'),
                      ),
                      trailing: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Card(
                    elevation: 4.0,
                    margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(
                            Icons.lock_outline,
                            color: Colors.purple[900],
                          ),
                          title: Text("Change Password"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            //open change password
                          },
                        ),
                        _buildDivider(),
                        ListTile(
                          leading: Icon(
                            Icons.language,
                            color: Colors.purple[900],
                          ),
                          title: Text("Change Language"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            //open change language
                          },
                        ),
                        _buildDivider(),
                        ListTile(
                          leading: Icon(
                            Icons.location_on,
                            color: Colors.purple[900],
                          ),
                          title: Text("Change Location"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            //open change location
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    "Notification Settings",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple[900],
                    ),
                  ),
                  SwitchListTile(
                    activeColor: Colors.purple[900],
                    contentPadding: const EdgeInsets.all(0),
                    value: true,
                    title: Text("Received notification"),
                    onChanged: (val) {},
                  ),
                  SwitchListTile(
                    activeColor: Colors.purple[900],
                    contentPadding: const EdgeInsets.all(0),
                    value: false,
                    title: Text("Received newsletter"),
                    onChanged: null,
                  ),
                  SwitchListTile(
                    activeColor: Colors.purple[900],
                    contentPadding: const EdgeInsets.all(0),
                    value: true,
                    title: Text("Received Offer Notification"),
                    onChanged: (val) {},
                  ),
                  SwitchListTile(
                    activeColor: Colors.purple[900],
                    contentPadding: const EdgeInsets.all(0),
                    value: true,
                    title: Text("Received App Updates"),
                    onChanged: null,
                  ),
                  const SizedBox(height: 60.0),
                ],
              ),
            ),

//            Positioned(
//              bottom: -20,
//              left: -20,
//              child: Container(
//                width: 80,
//                height: 80,
//                alignment: Alignment.center,
//                decoration: BoxDecoration(
//                  color: Colors.purple[900],
//                  shape: BoxShape.circle,
//                ),
//              ),
//            ),
////            Positioned(
//              bottom: 00,
//              left: 00,
//              child: IconButton(
//                icon: Icon(
//                  Icons.power_settings_new,
//                  color: Colors.white,
//                ),
//                onPressed: () {
//                  //log out
//                },
       //       ),
        //    )
          ],
        ),
      ),
    );
  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,
    );
  }
}