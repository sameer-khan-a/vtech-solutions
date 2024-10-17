import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VTech Solutions',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VTechHomeScreen(),
    );
  }
}

class VTechHomeScreen extends StatefulWidget {
  @override
  _VTechHomeScreenState createState() => _VTechHomeScreenState();
}

String? _selectedItem;
final List<String> _dropdownItems = [
  'Home',
  'About Us',
  'Gallery',
  'P G Courses',
  'Training Course',
  'Contact Us',
  'Job Portal'
];

class _VTechHomeScreenState extends State<VTechHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'VTech Solutions',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Container(
            color: Colors.purple,
            child: DropdownButton<String>(
              value: _selectedItem,
              focusColor: Colors.white,
              icon: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Image.asset(
                  'assets/images/icon.jpg',
                  height: 45,
                  width: 45,
                ),
              ),
              dropdownColor: Colors.purple,
              underline: Container(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedItem = newValue!;
                });
              },
              items: _dropdownItems.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Text(
            "Welcome to VTech Solutions!!!",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 40,
            ),
          ),
          color: Colors.purpleAccent,
        ),
      ),
    );
  }
}
