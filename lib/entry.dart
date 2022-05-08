import 'package:flutter/material.dart';
import 'campus_page_list.dart';

class CampusApp extends StatefulWidget {
  const CampusApp({ Key? key }) : super(key: key);

  @override
  State<CampusApp> createState() => _CampusAppState();
}

class _CampusAppState extends State<CampusApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.white,
            height: 100,
            width: 100,

          ),
          Container(
            color: Colors.white,
            height: 100,
            width: 100,
          ),
        ],),

    );
  }
}