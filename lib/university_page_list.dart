import 'package:flutter/material.dart';
import 'package:kampuste_ne_yenir/restaurant_page_list.dart';
import 'dart:async';
import 'model/university_model.dart';

class UniversityPageList extends StatefulWidget {
  const UniversityPageList({Key? key}) : super(key: key);

  @override
  _UniversityPageListState createState() => _UniversityPageListState();
}

late Future _data;


class _UniversityPageListState extends State<UniversityPageList> {

  Future<List<University>> _getUniversityInfo() async {
    var data = await DefaultAssetBundle.of(context).loadString("assets/json/university.json");
    return userFromJson(data);
  }

  @override
  void initState() {
    super.initState();
    _data = _getUniversityInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Üniversiteler"),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: _data,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                print(snapshot.data);
                if (snapshot.data == null) {
                  return const Center(child: Text("Loading..."));
                } else {
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(snapshot.data[index].name),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => RestaurantsPageList(snapshot.data[index])));
                        },
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
