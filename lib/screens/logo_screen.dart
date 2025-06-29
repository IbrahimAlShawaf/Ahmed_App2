import 'package:flutter/material.dart';
import 'login_screen.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.jpg',
              width: 100,
              height: 100,
            ), // استبدل بمسار صورة اللوجو
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent, // خلفية شفافة
                shadowColor: Colors.transparent, // إزالة الظل
                elevation: 0, // إزالة التأثير ثلاثي الأبعاد
              ),
              child: const Text(
                'دخول',
                style: TextStyle(
                  color: Colors.red, // لون النص أحمر
                  fontWeight: FontWeight.bold, // خط عريض
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
