import 'package:flutter/material.dart';

class Repassword extends StatefulWidget {
  const Repassword({super.key});

  @override
  State<Repassword> createState() => _Repassword();
}

class _Repassword extends State<Repassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(50.0),
        children: <Widget>[
          Align(
              child: GestureDetector(
                onTap: () {
                  // Action to perform on icon click
                  print('Icon clicked');
                  Navigator.of(context).pop(true);
                },
                child: Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.all(0.0),
                  child: Icon(
                    Icons.close,
                    size: 35.0,
                  ),
                ),
              ),
          ), // Icon
          Padding(
            padding: EdgeInsets.fromLTRB(8, 50, 8, 0),
            child: Text(
              'Reset',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  height: 0),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 0, 8, 50),
            child: Text(
              'Password',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  height: 0 // adjust the font size as needed
                  ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Enter your email',
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: SizedBox(
              height: 45,
              child: ElevatedButton(
                onPressed: null,
                child: const Text('Reset Password'),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  // Set background color
                  minimumSize:
                      MaterialStateProperty.all(Size(double.infinity, 0)),
                  // Set minimumSize for width to be 100%
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  // Set text color
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // Set border radius
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
