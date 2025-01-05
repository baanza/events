import 'package:flutter/material.dart';
import 'package:myapp/config/events.dart';

class ListEvents extends StatelessWidget {
  final Events event;
  const ListEvents({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: 13),
      child: Row(
        children: [
           Container(
            width: screenSize.width * 0.4,
            height: 176,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: AssetImage(event.imagepath),
                    fit: BoxFit.cover)
                )),
            const SizedBox(width: 8,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(event.date, style: const TextStyle(color:Colors.white),),
                const SizedBox(height: 10,),
                Text(event.title, style:const  TextStyle(color:Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                const SizedBox(height: 10,),
                Text(event.location, style: const TextStyle(color:Colors.white),),
              ],
            ),
          )
        ],
      )
    );
  }
}
