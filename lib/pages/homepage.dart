
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:myapp/config/categories.dart';
import 'package:myapp/config/events.dart';
import 'package:myapp/styles/appStyles.dart';
// import 'package:myapp/widgets/categories.dart';
import 'package:myapp/widgets/displayevent.dart';
import 'package:myapp/widgets/groups.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8),
        height: ScreenSize.height ,

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xFF070D23),
              Color(0xFF071137)

            ],
            stops: [0.4, 0.7]
            
            )

        ),
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30,),
              const Row(
                children: [
                  Expanded(
                    flex: 6,
                    child:TextField(
                      style: TextStyle(
                        color: Colors.white
                      ),
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: Colors.grey
                        ),
                        filled: true,
                        fillColor: Color(0xFF232A3D),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))
                        )
                      )
                    ) ),
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.location_pin, color: Colors.white,)),
                  Expanded(
                    flex: 1,
                    child: Icon(FluentSystemIcons.ic_fluent_filter_filled, color: Colors.white,))
                ],

              ),
              const SizedBox(height: 20,),
              Text("Explore", style: Appstyles.BigText,),
              const SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: fake_db.map((event) => Displayevent(event: event)).toList(),
                ),
              ),

              const SizedBox(height: 20,),
              Text("Categories", style:Appstyles.BigText),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: groups.map((group) => Categorywidget(group: group)).toList(),)


              ]
            ),
          ),
        )
      ),
    );
  }
}