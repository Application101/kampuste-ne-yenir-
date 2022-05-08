import 'package:flutter/material.dart';

import 'campus_page_list.dart';
// import 'campus_page_list.dart';

class CampusApp extends StatefulWidget {
  const CampusApp({Key? key}) : super(key: key);

  @override
  State<CampusApp> createState() => _CampusAppState();
}

class _CampusAppState extends State<CampusApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.deepOrange,
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Kampüste \nNe \nYenir?',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 50),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // Background color
                minimumSize: const Size(60, 60),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CampusPage()),
                );
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Giriş Yap'),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // Background color
                minimumSize: const Size(60, 60),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CampusPage()),
                );
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Üye Olmadan \nDevam Et'),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
