import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final List<String> inputs;

  const ResultScreen({super.key, required this.inputs});

  @override
  Widget build(BuildContext context) {
    // افتراض أن inputs[0] هو اسم الطالب، inputs[1] هو التخصص، inputs[2] هو العام الدراسي، inputs[3] هو المعدل العام
    String studentName = inputs.isNotEmpty ? inputs[0] : 'غير محدد';
    String specialization = inputs.length > 1 ? inputs[1] : 'غير محدد';
    String year = inputs.length > 2 ? inputs[2] : 'غير محدد';
    double average = inputs.length > 3 ? double.tryParse(inputs[3]) ?? 0.0 : 0.0;
    String percentage = (average * 100 / 100).toStringAsFixed(2) + '%'; // تحويل المعدل إلى نسبة

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
                    studentName,
                    style: TextStyle(fontSize: 20, color: Colors.blue[700]),
                  ),
                  Text(
                    '1234/2020', // يمكن استبداله بـ year إذا كنت تريد استخدام الإدخال
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
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    percentage,
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.blue[700]),
                  ),
                  SizedBox(height: 10),
                  Text(
                    studentName,
                    style: TextStyle(fontSize: 16, color: Colors.blue[700]),
                  ),
                  Text(
                    specialization,
                    style: TextStyle(fontSize: 16, color: Colors.blue[700]),
                  ),
                  Text(
                    year,
                    style: TextStyle(fontSize: 16, color: Colors.blue[700]),
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