import 'package:flutter/material.dart';
import 'package:project_22112023/profiles/profile_page_body.dart';
import 'package:project_22112023/profiles/profile_page_header.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProfileHeader(),
              ProfilePageBody(),
            ],
          ),
        ),
      ),
    );
  }
}
