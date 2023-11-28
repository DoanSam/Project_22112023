import 'package:flutter/material.dart';
import 'package:project_22112023/controls/main_page.dart';
import 'package:project_22112023/welcome/sign_up_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool sets = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: BuildSignIn(),
      ),
    );
  }

  Widget BuildSignIn() {
    return Container(
      alignment: Alignment.center,
      //height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.grey.withOpacity(0.2),
            Colors.grey.withOpacity(0.5),
            Colors.grey.withOpacity(1),
          ],
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.navigate_before_rounded,
                  size: 35,
                  color: Colors.black,
                ),
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => SignUpPage(),
                    ),
                  );
                },
                child: Text(
                  'ĐĂNG KÝ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          const Text(
            'ĐĂNG NHẬP',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          Text(
            'Sử dụng tài khoản của bạn hoặc Email và mật khẩu đã được đăng ký.',
            style: TextStyle(
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(25),
            ),
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Column(
              children: [
                const TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Tên người dùng / Email',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    label: Text(
                      'Tài khoản',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onDoubleTap: () {
                    setState(() {
                      sets = !sets;
                    });
                  },
                  child: TextField(
                    obscureText: sets,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Nhập mật khẩu của bạn',
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      suffixIcon: Icon(
                        sets ? Icons.visibility_off : Icons.visibility,
                        color: Colors.black,
                      ),
                      label: Text(
                        'Mật khẩu',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Quên mật khẩu?',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const MainPage(),
                ),
              );
            },
            child: const Text(
              'Đăng nhập',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              backgroundColor: Colors.black,
            ),
          ),
          SizedBox(height: 50),
          Row(
            children: [
              Expanded(
                child: Divider(
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Hoặc',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Expanded(
                child: Divider(
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 80),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/ic-facebook.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(''),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/ic-google.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(''),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/ic-apple.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(''),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
