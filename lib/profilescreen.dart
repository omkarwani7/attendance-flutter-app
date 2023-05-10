import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'model/user.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  double screenHeight = 0;
  double screenWidth = 0;

  Color primary = const Color(0xffeeff444c);
  String birth = "Date of Birth";

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 80, bottom: 24),
              height: 120,
              width: 120,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: primary,
              ),
              child: Center(
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 80,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Employee ${User.employeeId}",
                style: TextStyle(
                  fontFamily: "NexaBold",
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            textField("First Name", "First Name"),
            textField("First Name", "Last Name"),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Date of Birth",
                style: TextStyle(
                  fontFamily: "NexaBold",
                  color: Colors.black87,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1950),
                  lastDate: DateTime.now(),
                );
              },
              child: Container(
                height: kToolbarHeight,
                width: screenWidth,
                margin: EdgeInsets.only(bottom: 12),
                padding: EdgeInsets.only(left: 11),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: Colors.black54,
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    birth,
                    style: TextStyle(
                      fontFamily: "NexaBold",
                      color: Colors.black54,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            textField("Address", "Address"),
          ],
        ),
      ),
    );
  }

  Widget textField(String title, String hint) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: TextStyle(
              fontFamily: "NexaBold",
              color: Colors.black87,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 12),
          child: TextFormField(
            cursorColor: Colors.black54,
            maxLines: 1,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(
                color: Colors.black54,
                fontFamily: "NexaBold",
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black54,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black54,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
