import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CampusPage extends StatefulWidget {
  const CampusPage({Key? key}) : super(key: key);

  @override
  State<CampusPage> createState() => _CampusPageState();
}

class _CampusPageState extends State<CampusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Campus Page", style: TextStyle(color:Colors.grey[600] ),),
        backgroundColor: Colors.grey[300],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  height: 50,
                  color: Colors.grey[300],
                  child: const Center(child: Text('Kampüs 1')),
                ),
                Container(
                  height: 50,
                  color: Colors.grey[300],
                  child: const Center(child: Text('Kampüs 2')),
                ),
                Container(
                  height: 50,
                  color: Colors.grey[300],
                  child: const Center(child: Text('Kampüs 3')),
                ),
                Container(
                  height: 50,
                  color: Colors.grey[300],
                  child: const Center(child: Text('Kampüs 4')),
                ),
                Container(
                  height: 50,
                  color: Colors.grey[300],
                  child: const Center(child: Text('Kampüs 5')),
                ),
                Container(
                  height: 50,
                  color: Colors.grey[300],
                  child: const Center(child: Text('Kampüs 6')),
                ),
                Container(
                  height: 50,
                  color: Colors.grey[300],
                  child: const Center(child: Text('Kampüs 7')),
                ),
                Container(
                  height: 50,
                  color: Colors.grey[300],
                  child: const Center(child: Text('Kampüs 8')),
                ),
                Container(
                  height: 50,
                  color: Colors.grey[300],
                  child: const Center(child: Text('Kampüs 9')),
                ),
                Container(
                  height: 50,
                  color: Colors.grey[300],
                  child: const Center(child: Text('Kampüs 10')),
                ),
                Container(
                  height: 50,
                  color: Colors.grey[300],
                  child: const Center(child: Text('Kampüs 11')),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  FloatingActionButton(onPressed: null, child: Icon(Icons.question_mark),backgroundColor: Colors.grey[600])
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: TextField(
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
                          prefixIconColor: Colors.grey),
                    ),
                  ),
                ),
                FloatingActionButton(onPressed: null, child: Icon(Icons.comment),backgroundColor: Colors.grey[600],)
              ],
            ),
          )
        ],
      ),
    );
  }
}
