import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BuildPostPage extends StatefulWidget {
  const BuildPostPage({super.key});

  @override
  State<BuildPostPage> createState() => _BuildPostPageState();
}

class _BuildPostPageState extends State<BuildPostPage> {
  String selectedValue = 'Thời trang';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
        title: Container(
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[200],
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.navigate_before_rounded,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(width: 15),
              Text(
                'Tạo bài viết của bạn.',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: BuildPage(),
      ),
    );
  }

  Widget BuildPage() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/images/avatar-1.png'),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Sam Quoc Doan',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Loại bài đăng',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                ComboBox(),
                SizedBox(height: 20),
                Moreptions(),
                //SizedBox(height: 5),
                BuildEnterInfomations('Nhập tiêu đề sản phẩm'),
                SizedBox(height: 10),
                BuildEnterInfomations('Tên sản phẩm'),
                SizedBox(height: 10),
                BuildEnterInfomations('Giá bán'),
                SizedBox(height: 10),
                BuildEnterInfomations('Số lượng'),
                SizedBox(height: 10),
                BuildEnterDescriptions(),
                SizedBox(height: 10),
                BuildEnterInfomations('Tình trạng'),
                BuildButton(),
                //UploadImage(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget ComboBox() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: DropdownButton<String>(
        icon: Icon(Icons.arrow_drop_down_rounded),
        value: selectedValue,
        borderRadius: BorderRadius.circular(25),
        dropdownColor: Colors.white.withOpacity(.9),
        padding: EdgeInsets.symmetric(horizontal: 20),
        style: TextStyle(
          fontSize: 15,
          color: Colors.black,
        ),
        itemHeight: 50,
        underline: Container(
          color: Colors.white,
        ),
        items: <String>[
          'Thời trang',
          'Đồ ăn',
          'Đồ điện tử',
          'Khác',
        ].map<DropdownMenuItem<String>>(
          (String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          },
        ).toList(),
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue!;
          });
        },
      ),
    );
  }

  Widget BuildEnterInfomations(String text) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              label: Text(text),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget BuildButton() {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Hủy',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Colors.red,
              minimumSize: Size(100, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          SizedBox(width: 20),
          TextButton(
            onPressed: () {},
            child: Text(
              'Hoàn tất',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              minimumSize: Size(200, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Moreptions() {
    return Container(
      child: Row(
        children: [
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  EvaIcons.plusCircleOutline,
                ),
                SizedBox(width: 5),
                Text(
                  'Ảnh',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              backgroundColor: Colors.white,
            ),
          ),
          SizedBox(width: 10),
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  EvaIcons.plusCircleOutline,
                ),
                SizedBox(width: 5),
                Text(
                  'Videos',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget BuildEnterDescriptions() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          TextField(
            maxLines: null,
            decoration: InputDecoration(
              label: Text('Mô tả sản phẩm'),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
