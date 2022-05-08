import 'package:flutter/material.dart';
import 'entry.dart';

class CampusPage extends StatefulWidget {


  @override
  State<CampusPage> createState() => _CampusPageState();
}

class _CampusPageState extends State<CampusPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text('Campus Page'),
          leading: IconButton(onPressed: (){},
              icon: Icon(Icons.menu)),
        ),
        body: Column(
          children: [
            Container(
              child: Center(child: Text('Restaurant 1')),
              padding: EdgeInsets.all(8.0),
              color: Colors.deepOrange,
            ),
            Container(
              child: Center(child: Text('Restaurant 2')),
              padding: EdgeInsets.all(8.0),
              color: Colors.deepOrange,
            ),
            Container(
              child: Center(child: Text('Restaurant 3')),
              padding: EdgeInsets.all(8.0),
              color: Colors.deepOrange,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.end,
              children: [Icon(Icons.question_mark),
                Container(
                  child: FloatingActionButton(onPressed: () {}),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,

                  ),
                ),
              ],
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.end,
              children: [Icon(Icons.question_mark),
                Container(child:FloatingActionButton(onPressed: () {}) ,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              style: TextStyle(color: Colors.deepOrange),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(0, 203, 203, 223),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Colors.grey
              ),
            )
          ],
        ),
      ),
    );
  }
}