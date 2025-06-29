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
              alignment: Alignment.center,

              color: Colors.blue[50],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'مرحبًا بك',
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                  Text(
                    'اسم الطالب رباعي',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                  Text(
                    ' 1234/2020',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                  //  SizedBox(height: 100),
                  Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/images/user.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(20),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  Container(
                    color: Color(0xFFD3E0EA),
                    child: Center(child: Text('شاشة الصور')),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigate to input form screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => InputScreen()),
                      );
                    },
                    child: Container(
                      color: Color(0xFFD3E0EA),
                      child: Center(child: Text('نموذج الادخال')),
                    ),
                  ),
                  Container(
                    color: Color(0xFFD3E0EA),
                    child: Center(child: Text('تسجيل الخروج')),
                  ),
                  Container(
                    color: Color(0xFFD3E0EA),
                    child: Center(child: Text('بيانات المستخدم')),
                  ),
                ],
              ),
            ),
          ),
          // Expanded(
          //   flex: 2,
          //   child: Container(
          //     padding: EdgeInsets.all(20),
          //     child: GridView.count(
          //       crossAxisCount: 2,
          //       crossAxisSpacing: 10,
          //       mainAxisSpacing: 10,
          //       children: [
          //         Container(child: _buildButton('شاشة الصور', () {})),
          //         Container(child: _buildButton('نموذج الادخال', () {})),
          //         Container(child: _buildButton('تسجيل الخروج', () {})),
          //         Container(child: _buildButton('بيانات المستخدم', () {})),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget _buildButton(String text, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black54,
        backgroundColor: Color(0xFFD3E0EA),
        minimumSize: Size(double.infinity, 100),
      ),
      child: Text(text, textAlign: TextAlign.center),
    );
  }
}
