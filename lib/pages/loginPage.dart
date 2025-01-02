// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:myapp/styles/appStyles.dart';
import 'package:myapp/widgets/loginform.dart';

class Loginpage extends StatelessWidget {
  final bool reg ;
  const Loginpage({super.key, this.reg = false});

  @override
  Widget build(BuildContext context) {
    Size ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF070D23),
          leading:  IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white,)),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: ScreenSize.width,
            height: ScreenSize.height,
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(color: Color(0xFF070D23)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Text(
                    reg? "Register" : "Login",
                    style: Appstyles.BigText,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Loginform(
                  reg: reg,
                )
              ],
            ),
          ),
        ));
  }
}
