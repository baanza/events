import 'package:flutter/material.dart';
import 'package:myapp/config/events.dart';

class Bottommapsheet extends StatelessWidget {
  final Events event;
  const Bottommapsheet({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * 0.85,
      height: 90,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF19203D),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(event.imagepath), fit: BoxFit.cover)),
        ),
        title: Text(
          event.title,
          maxLines: 1,
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
        ),
        subtitle:
            Text(event.location, style: const TextStyle(color: Colors.grey)),
        trailing: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.local_taxi,
              color: Colors.white,
            ),
            Text(
              "1 mile",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
