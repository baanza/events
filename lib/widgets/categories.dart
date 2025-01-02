import 'package:flutter/material.dart';
import 'package:myapp/config/categories.dart';

class CategoryDisplay extends StatelessWidget {
  const CategoryDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: groups.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          category group = groups[index];
          return Column(
            children: [
              Container(
                  height: size.width * 0.20,
                  width: size.width * 0.20,
                  decoration: BoxDecoration(
                      color: group.bg,
                      borderRadius: const BorderRadius.all(Radius.circular(8))),
                  child: Center(
                      child: Icon(
                    group.icon,
                    color: group.IconColor,
                    size: 50,
                  ))),
                  const SizedBox(height: 10,),
                  Text(group.title, style: const TextStyle(color: Colors.white),)
            ],
          );
        });
  }
}
