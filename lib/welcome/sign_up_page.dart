import 'package:flutter/material.dart';
import 'package:project_22112023/welcome/sign_in_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool sets = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: BuildSignUp(),
      ),
    );
  }

  Widget BuildSignUp() {
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
            Colors.grey.withOpacity(1.0),
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
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const SignInPage(),
                    ),
                  );
                },
                child: Text(
                  'ĐĂNG NHẬP',
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
          Text(
            'ĐĂNG KÝ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          Text(
            'Nhập các thông tin dưới đây để bắt đầu với ứng dụng thử nghiệm.',
            style: TextStyle(
              color: Colors.grey[600],
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
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  decoration: InputDecoration(
                    hintText: 'Nhập tên của bạn',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    label: Text(
                      'Họ và tên',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                const TextField(
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  decoration: InputDecoration(
                    hintText: 'Tên người dùng / Email',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    label: Text(
                      'Tài khoản',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: sets,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                  decoration: InputDecoration(
                    hintText: 'Nhập mật khẩu của bạn',
                    hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                    label: Text(
                      'Mật khẩu',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: const Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onDoubleTap: () {
                    setState(() {
                      sets = !sets;
                    });
                  },
                  child: TextField(
                    obscureText: sets,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                    decoration: InputDecoration(
                      hintText: 'Nhập mật khẩu của bạn',
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                      suffixIcon: Icon(
                        sets ? Icons.visibility_off : Icons.visibility,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                      label: Text(
                        'Nhập lại mật khẩu',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'ĐĂNG KÝ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.white,
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
          SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: Divider(
                  color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Hoặc',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Expanded(
                child: Divider(
                  color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
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
