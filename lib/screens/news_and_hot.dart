import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('New & Hot'),
        ),
        body: const TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  // Placeholder content
                  SizedBox(height: 200, child: Placeholder()),
                ],
              ),
            ),
            // SizedBox(height: 200, child: Placeholder()),
          ],
        ),
      ),
    );
  }
}
