import 'package:flutter/material.dart';
import 'home_screen.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final TextEditingController _usernameController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   void _login() {
//     String username = _usernameController.text;
//     String password = _passwordController.text;

//     if (username == 'Student' && password == 'A100') {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => HomeScreen()),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('اسم المستخدم أو كلمة المرور غير صحيحة')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Center(
//           child: Column(
//             children: [
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     height: 200,
//                     width: double.infinity,
//                     //padding: EdgeInsets.all(20),
//                     decoration: BoxDecoration(
//                       color: Colors.blue[50],
//                       // borderRadius: BorderRadius.circular(50),
//                     ),
//                     child: Column(
//                       children: [
//                         Image(
//                           image: AssetImage('assets/images/user.jpg'),
//                           height: 100,
//                         ),
//                         // Container(
//                         //   padding: EdgeInsets.all(10),
//                         //   decoration: BoxDecoration(
//                         //     color: Colors.red[300],
//                         //     borderRadius: BorderRadius.circular(10),
//                         //   ),
//                         //   child: Icon(Icons.apps, size: 50, color: Colors.white),
//                         // ),
//                         SizedBox(height: 10),
//                         Text(
//                           'مرحبا بك',
//                           style: TextStyle(
//                             fontSize: 24,
//                             color: Colors.blue[700],
//                           ),
//                         ),
//                         SizedBox(height: 30),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 40),
//               Text(
//                 'ادخل اسم المستخدم وكلمة السر',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 16, color: Colors.grey[600]),
//               ),
//               SizedBox(height: 50),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 20),
//                 child: TextField(
//                   controller: _usernameController,
//                   decoration: InputDecoration(
//                     labelText: 'اسم المستخدم',
//                     filled: true,
//                     fillColor: Colors.white,
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       borderSide: BorderSide.none,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 20),
//                 child: TextField(
//                   controller: _passwordController,
//                   decoration: InputDecoration(
//                     labelText: 'كلمة المرور',
//                     filled: true,
//                     fillColor: Colors.white,
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       borderSide: BorderSide.none,
//                     ),
//                   ),
//                   obscureText: true,
//                 ),
//               ),
//               SizedBox(height: 20),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 20),
//                 child: ElevatedButton(
//                   onPressed: _login,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.red[400],
//                     minimumSize: Size(double.infinity, 50),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(0),
//                     ),
//                   ),
//                   child: Text(
//                     'تسجيل الدخول',
//                     style: TextStyle(fontSize: 18, color: Colors.white),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }




class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (username == 'Student' && password == 'A100') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('اسم المستخدم أو كلمة المرور غير صحيحة')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const SizedBox(height: 60),
              
              // الشعار والعنوان
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(40),
                decoration: BoxDecoration(
                  color: const Color(0xFFB8D4E3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    // الشعار - أربعة مربعات حمراء
                    Container(
                      width: 80,
                      height: 80,
                      child: GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 4,
                        crossAxisSpacing: 4,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: List.generate(4, (index) {
                          return Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFE57373),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          );
                        }),
                      ),
                    ),
                    const SizedBox(height: 16),
                    
                    // النص الترحيبي
                    const Text(
                      'مرحبا بك',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF5A8AA8),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 40),
              
              // النص التوضيحي
              const Text(
                'أدخل أسم المستخدم وكلمة السر',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF5A8AA8),
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              
              const SizedBox(height: 30),
              
              // حقل أسم المستخدم
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: TextField(
                  controller: _usernameController,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFF666666),
                  ),
                  decoration: const InputDecoration(
                    hintText: 'أسم المستخدم',
                    hintStyle: TextStyle(
                      color: Color(0xFF999999),
                      fontSize: 16,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 16,
                    ),
                  ),
                ),
              ),
              
              const SizedBox(height: 16),
              
              // حقل كلمة المرور
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFF666666),
                  ),
                  decoration: const InputDecoration(
                    hintText: 'كلمة المرور',
                    hintStyle: TextStyle(
                      color: Color(0xFF999999),
                      fontSize: 16,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 16,
                    ),
                  ),
                ),
              ),
              
              const SizedBox(height: 30),
              
              // زر تسجيل الدخول
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: _login,
                  // () {

                  //   // هنا يمكنك إضافة منطق تسجيل الدخول
                  //   print('Username: ${_usernameController.text}');
                  //   print('Password: ${_passwordController.text}');
                  // },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE57373),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
  
  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
