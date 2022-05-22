import 'package:flutter/material.dart';
import 'signup.dart';
import 'university_page_list.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 75),
            Text('Kampüste Ne Yenir?',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
            ),
            SizedBox(height: 50),
      
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     hintText: 'Email',
                   ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    obscureText: true,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     hintText: 'Şifre',
                   ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
      
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(color:Color.fromARGB(255, 4, 136, 8),
                borderRadius: BorderRadius.circular(12),
                ),
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UniversityPageList()),
                );
              },
                  
                  child: Center(
                    child: Text('Giriş Yap',
                    style:TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    ),
                    ),
                    ),
                ),
              ),
            ),
            SizedBox(height: 25),
      
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                   Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUpPage()),
              );
            },
                  child: Text('Üye Ol |',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  ),),
                ),
                ElevatedButton(
                  onPressed: () {
                   Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UniversityPageList()),
              );
            },
                  child: Text(' Üye Olmadan Devam Et',
                  style: TextStyle(
                    color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ],
            ),
          ],
          ),
        ),
      ),
    );
  }
}
