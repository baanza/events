import 'package:flutter/material.dart';
import 'package:myapp/config/categories.dart';

class Categorywidget extends StatelessWidget {
  final category group;
  const Categorywidget({super.key, required this.group});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: size.width * 0.2,
          height: size.width * 0.2,
          decoration: BoxDecoration(
            color: group.bg,
            borderRadius: const BorderRadius.all(Radius.circular(8))
          ),
          child: Center(child: Icon(group.icon, color: group.IconColor, size: 50,),),
        ),
        Text(group.title, style: const TextStyle(color: Colors.white),)
      ],
    );
  }
}
