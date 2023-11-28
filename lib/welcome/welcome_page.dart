import 'package:flutter/material.dart';
import 'package:project_22112023/welcome/sign_in_page.dart';
import 'package:project_22112023/welcome/sign_up_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: BuildWelcomePage(),
      ),
    );
  }

  Widget BuildWelcomePage() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Xin Chào!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          Text(
            'chào bạn đến với ứng dụng thử nghiệm.',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.grey[600],
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => SignInPage(),
                ),
              );
            },
            child: Text(
              'Đăng nhập',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(350, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              backgroundColor: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const SignUpPage(),
                ),
              );
            },
            child: Text(
              'Đăng ký',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(350, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              backgroundColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
