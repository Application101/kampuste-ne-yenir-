import 'package:flutter/material.dart';
import 'campus_page_list.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CampusApp(),
    );
  }
}

class CampusApp extends StatefulWidget {
  const CampusApp({ Key? key }) : super(key: key);

  @override
  State<CampusApp> createState() => _CampusAppState();
}

class _CampusAppState extends State<CampusApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepOrange,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Kampüste \nNe \nYenir?',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600, fontSize: 50),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingActionButton(
                    onPressed: (){
                      //buraya navigation kodu gelecek kütükhaneye kaydetmek gerektiği için şu an yazmadım
                    },
                    child: Container(child: const Text('Giriş Yap'),
                      color: Colors.white,
                      padding: const EdgeInsets.all(20.0),

                    ),
                  ),
                  FloatingActionButton(
                    onPressed: (){
                      //buraya da aynı şekilde
                    },
                    child: Container(child: const Text('Üye Olmadan \nDevam Et'),
                      color: Colors.white,
                      padding: const EdgeInsets.all(20.0),

                    ),
                  ),
                ],
              ),
            )],)


    );
  }
}
