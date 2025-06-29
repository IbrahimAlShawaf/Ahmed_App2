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
        builder:
            (context) =>
                ResultScreen(inputs: _controllers.map((c) => c.text).toList()),
      ),
    );
  }

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
            Text('', style: TextStyle(fontSize: 20)),
            ...List.generate(
              4,
              (index) => Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: _controllers[index],
                  decoration: InputDecoration(
                    labelText:
                        [
                          'اسم الطالب',
                          'التخصص',
                          'العام الدراسي',
                          'المعدل العام',
                        ][index],
                    filled: true,
                    fillColor: Colors.white,
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _submit, child: Text('متابعة')),
          ],
        ),
      ),
    );
  }
}
