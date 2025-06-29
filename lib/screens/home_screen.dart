import 'package:ahmed_app/screens/input_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(16.0),
              color: Color(0xFFD9EAF7), // لون خلفية مشابه للصورة
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'مرحبًا بك',
                    style: TextStyle(fontSize: 20, color: Colors.black87),
                  ),
                  Text(
                    'اسم الطالب رباعي',
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  Text(
                    '1234/2020',
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  SizedBox(height: 20),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/user.jpg'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.white,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  Container(
                    color: Color(0xFFD3E0EA),
                    child: Center(
                      child: Text(
                        'شاشة الصور',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => InputScreen()),
                      );
                    },
                    child: Container(
                      color: Color(0xFFD3E0EA),
                      child: Center(
                        child: Text(
                          'نموذج الادخال',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Color(0xFFD3E0EA),
                    child: Center(
                      child: Text(
                        'تسجيل الخروج',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                    ),
                  ),
                  Container(
                    color: Color(0xFFD3E0EA),
                    child: Center(
                      child: Text(
                        'بيانات المستخدم',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.menu), label: ''),
      //     BottomNavigationBarItem(icon: Icon(Icons.delete), label: ''),
      //     BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
      //     BottomNavigationBarItem(icon: Icon(Icons.share), label: ''),
      //   ],
      //   selectedItemColor: Colors.black54,
      //   unselectedItemColor: Colors.black54,
      // ),
    );
  }
}