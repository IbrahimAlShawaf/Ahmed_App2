import 'package:flutter/material.dart';
import 'result_screen.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final List<TextEditingController> _controllers = List.generate(
    4,
    (_) => TextEditingController(),
  );

  void _submit() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(inputs: _controllers.map((c) => c.text).toList()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(16.0),
              color: Color(0xFFD9EAF7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'مرحبًا بك',
                    style: TextStyle(fontSize: 20, color: Colors.blue[700]),
                  ),
                  Text(
                    'اسم الطالب رباعي',
                    style: TextStyle(fontSize: 16, color: Colors.blue[700]),
                  ),
                  Text(
                    '1234/2020',
                    style: TextStyle(fontSize: 16, color: Colors.blue[700]),
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
              padding: EdgeInsets.all(20.0),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    4,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                        decoration: BoxDecoration(
                          color: Color(0xFFF0F4F8),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: TextField(
                          controller: _controllers[index],
                          decoration: InputDecoration(
                            labelText: [
                              'اسم الطالب',
                              'التخصص',
                              'العام الدراسي',
                              'المعدل العام',
                            ][index],
                            labelStyle: TextStyle(color: Colors.blue[700], fontSize: 16),
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: _submit,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF44336),
                      minimumSize: Size(200, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Text(
                      'التالي',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}