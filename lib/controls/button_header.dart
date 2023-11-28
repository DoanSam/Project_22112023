import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:project_22112023/cart/cart_page.dart';
import 'package:project_22112023/post/post_page.dart';
import 'package:project_22112023/search/search_page.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => PostPage(),
          ),
        );
      },
      icon: Icon(
        EvaIcons.plusCircleOutline,
        size: 25,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        EvaIcons.menu2Outline,
        size: 25,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    );
  }
}

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => SearchPage(),
          ),
        );
      },
      icon: Icon(
        EvaIcons.search,
        size: 25,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    );
  }
}

class CartButton extends StatelessWidget {
  const CartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => CartPage(),
          ),
        );
      },
      icon: Icon(
        EvaIcons.shoppingCartOutline,
        size: 25,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    );
  }
}

class ChatButton extends StatelessWidget {
  const ChatButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        EvaIcons.messageCircleOutline,
        size: 25,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    );
  }
}

class SettingButton extends StatelessWidget {
  const SettingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.settings,
        size: 25,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    );
  }
}
