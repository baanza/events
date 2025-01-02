import 'package:flutter/material.dart';
import 'package:myapp/config/events.dart';

class Displayevent extends StatelessWidget {
  final Events event;
  const Displayevent({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.45,
      height: 176,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          image: DecorationImage(
              image: AssetImage(event.imagepath),
              fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        color: Colors.white),
                    child: Text(event.price),
                  ),
                  const SizedBox(
                    width: 7,
                  )
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.calendar_month,
                    color: Colors.white,
                  ),
                  Text(
                    event.date,
                    style: const TextStyle(color: Colors.white),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(event.title,
                  style: const TextStyle(
                    color: Colors.white,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
