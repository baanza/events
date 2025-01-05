import 'package:flutter/material.dart';
import 'package:myapp/pages/loginPage.dart';

class Startpage extends StatelessWidget {
  const Startpage({super.key});

  @override
  Widget build(BuildContext context) {
    Size ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: ScreenSize.height,
          width: ScreenSize.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/upload2.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: ScreenSize.height * 0.6,
                width: double.maxFinite,
                child: const Center(
                    child: Text(
                  "Sherehee",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                )),
              ),
              Container(
                width: ScreenSize.width * 0.75,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.grey),
                    borderRadius: const BorderRadius.all(Radius.circular(8))),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Loginpage()));
                  },
                  style: const ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll<Color>(Colors.transparent)),
                  child: const Text("Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: ScreenSize.width * 0.75,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    color: Colors.transparent,
                    borderRadius: const BorderRadius.all(Radius.circular(8))),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Loginpage(reg: true,)));
                  },
                  style: const ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll<Color>(Colors.transparent)),
                  child: const Text("Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
