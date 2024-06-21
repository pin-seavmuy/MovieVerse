import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 0, right: 10),
        // padding: EdgeInsets.all(25), // 5px padding around the entire screen
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              // padding: EdgeInsets.all(20), 
              padding: EdgeInsets.only(top: 0, left: 10, right: 10),// 20px padding around the text and button
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      // Add your button onPressed functionality here
                    },
                    child: Text(
                      'Coming Soon',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 228, 6, 99),
                      ),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 20), // Horizontal padding for the text
              child: Text(
                '23 June',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(0), // 5px padding around each image
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Image.asset(
                      'assets/samsik.jpg',
                      height: 200,
                      width: 280,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10),
                    Image.asset(
                      'assets/bloodFree.jpeg',
                      height: 200,
                      width: 280,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10),
                    Image.asset(
                      'assets/hierarchy.jpg',
                      height: 200,
                      width: 280,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 20), // Horizontal padding for the text
              child: Text(
                '27 July',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
