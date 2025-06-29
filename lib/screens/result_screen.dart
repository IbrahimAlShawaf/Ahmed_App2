import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final List<String> inputs;

  const ResultScreen({super.key, required this.inputs});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                      flex: 1,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/images/logo.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text('شاشة العرض', style: TextStyle(fontSize: 20)),
            ...inputs.map(
              (input) => Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(input, style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
