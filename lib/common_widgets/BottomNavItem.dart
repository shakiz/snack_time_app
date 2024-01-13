import 'package:flutter/cupertino.dart';

class BottomNavItem extends StatefulWidget {
  String title, iconUrl;

  BottomNavItem({super.key, required this.title, required this.iconUrl});

  @override
  State<BottomNavItem> createState() => _BottomNavItemState(title, iconUrl);
}

class _BottomNavItemState extends State<BottomNavItem> {
  String title, iconUrl;

  _BottomNavItemState(this.title, this.iconUrl);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(children: [
        Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(iconUrl)))),
        Text(title)
      ]),
    );
  }
}
