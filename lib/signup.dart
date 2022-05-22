import 'package:flutter/material.dart';
import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({ Key? key }) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70,),
             Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Text('Hesap Oluştur',
         style: TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 24,
         ),
        ),
        ),
        SizedBox(height: 10,),
        Padding(padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          children: [
            Text('Zaten Hesabiniz Var Mı?',),
            SizedBox(width: 5,),
            Text('Giriş Yap', 
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
          ],
        ),
        ),
        SizedBox(height: 20,),
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
                     hintText: 'Ad Soyad',
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
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     hintText: 'Kullanıcı Adı',
                   ),
                  ),
                ),
              ),
            ),
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
                     hintText: 'Şifreyi Onayla',
                   ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(color:Color.fromARGB(255, 4, 136, 8),
                borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text('Kayıt Ol',
                  style:TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  ),
                  ),
                  ),
              ),
            ),
          ],
          ),
          ),
    );
  }
}
