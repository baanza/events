import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pages/homepage.dart';
import 'package:myapp/pages/mapPage.dart';
import 'package:myapp/pages/startpage.dart';

class SelectPage extends StatefulWidget {

  const SelectPage({super.key});

  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: <Widget>[
        const HomePage(),
        const Mappage(),
        const Startpage(),
        
        ][currentIndex],

      bottomNavigationBar:  NavigationBar(
      destinations: const [
        NavigationDestination(
          icon: Icon(
            FluentSystemIcons.ic_fluent_home_regular,
          ),
          label: "",
        ),
        NavigationDestination(
            icon: Icon(FluentSystemIcons.ic_fluent_location_regular),
            label: ""),
        NavigationDestination(
          icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
          label: "",
        ),
        NavigationDestination(
            icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_regular),
            label: ""),
      ],
      selectedIndex: currentIndex,
      onDestinationSelected: (index) {
        setState(() {
            currentIndex = index;
        });
      },
      backgroundColor: const Color(0xFF090909),
      elevation: 0,
      height: 70,
    )
    );
  }
}
