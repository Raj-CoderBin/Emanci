import 'package:flutter/material.dart';

class MyAppBarDasktop extends StatefulWidget {
  const MyAppBarDasktop({super.key});

  @override
  State<MyAppBarDasktop> createState() => _MyAppBarDasktopState();
}

class _MyAppBarDasktopState extends State<MyAppBarDasktop> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        Expanded(child: SizedBox()),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications, color: Colors.white),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.settings, color: Colors.white),
        ),
      ],
    );
  }
}
