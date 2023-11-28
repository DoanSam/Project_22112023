import 'package:flutter/material.dart';

class CategoriesList {
  String image;
  String title;

  CategoriesList({
    required this.image,
    required this.title,
  });
}

class Categories extends StatefulWidget {
  const Categories({super.key, required this.categorieslist});
  final List<CategoriesList> categorieslist;

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: widget.categorieslist.asMap().entries.map((e) {
      int index = e.key;
      CategoriesList category = e.value;
      return BuildCategory(context, category, index);
    }).toList());
  }

  Widget BuildCategory(
      BuildContext context, CategoriesList categorieslist, int index) {
    return Container(
      child: TextButton(
        onPressed: () {},
        child: Column(
          children: [
            Container(
              height: 50,
              width: 50,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: AssetImage(categorieslist.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text(
              categorieslist.title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 11,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
