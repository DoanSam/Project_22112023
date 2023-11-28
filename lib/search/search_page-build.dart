import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class SearchBuild extends StatefulWidget {
  const SearchBuild({super.key});

  @override
  State<SearchBuild> createState() => _SearchBuildState();
}

class _SearchBuildState extends State<SearchBuild> {
  int setHeight = 400;
  bool sets = false;
  @override
  void initState() {
    super.initState();
    setHeight;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.navigate_before_rounded,
                  color: Colors.black,
                  size: 35,
                ),
              ),
              Container(
                width: 305,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Icon(EvaIcons.search),
                          ),
                          hintText: 'Bạn muốn tìm gì?',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(EvaIcons.cameraOutline),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                ),
              ),
            ],
          ),
          BuildHistory(),
        ],
      ),
    );
  }

  Widget BuildHistory() {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Row(
              children: [
                Text(
                  'Tìm kiếm gần đây',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Xoá lịch sử tìm kiếm',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Container(
              height: sets ? 400 : null,
              child: Column(
                children: [
                  HistorySearch('Iphone 15 Pro Max 2TB'),
                  HistorySearch('Không biết tìm gì cả'),
                  HistorySearch('Chưa tìm kiếm được đâu'),
                  HistorySearch('Alo! ở đây có ai không?'),
                  HistorySearch('Code nhiều bug vãi sh*t :v'),
                ],
              ),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                setState(() {
                  sets = !sets;
                });
              },
              child: Text(
                'Hiển thị tất cả',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget HistorySearch(String historyText) {
    return Container(
      height: 45,
      child: TextButton(
        onPressed: () {},
        child: Row(
          children: [
            Text(
              historyText,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        style: TextButton.styleFrom(
          minimumSize: Size(double.infinity, 10),
        ),
      ),
    );
  }
}
