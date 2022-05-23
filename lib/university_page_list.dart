import 'package:flutter/foundation.dart';
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
  String searchString = "";

  Future<List<University>> _getUniversityInfo() async {
    var data = await DefaultAssetBundle.of(context).loadString("assets/json/university.json");
    return universityFromJson(data);
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
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  searchString = value.toLowerCase();
                });
              },
              decoration: const InputDecoration(
                  labelText: 'Ara', suffixIcon: Icon(Icons.search)),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
              child: FutureBuilder(
                future: _data,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (kDebugMode) {
                    print(snapshot.data);
                  }
                  if(snapshot.data == null) {
                    return const Center(child: Text("Loading..."));
                  } else {
                    return ListView.separated(
                        itemBuilder: (BuildContext context, int index) {
                          return snapshot.data[index].name.toLowerCase().contains(searchString) ? ListTile(
                            onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => RestaurantsPageList(snapshot.data[index])));
                          },
                            title: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(snapshot.data[index].name, style: const TextStyle(
                                fontSize: 18,
                              ),),
                            ),
                          ) : Container();
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return snapshot.data[index].name.toLowerCase().contains(searchString) ? const Divider() : Container();
                        },
                        itemCount: snapshot.data.length
                    );
                  }
                }
              )
          )
        ],
      ),
    );
  }
}
