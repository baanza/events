import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pages/homepage.dart';
import 'package:myapp/pages/loginPage.dart';
import 'package:myapp/widgets/user.dart';

class Loginform extends StatefulWidget {
  final bool reg;
  const Loginform({super.key, this.reg = false});

  @override
  State<Loginform> createState() => _LoginformState();
}

class _LoginformState extends State<Loginform> {
  final _formkey = GlobalKey<FormState>();
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.reg ? const UserField(): const SizedBox(),
          const Text("Email",
              style: TextStyle(color: Colors.white, fontSize: 20)),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text("Password",
              style: TextStyle(color: Colors.white, fontSize: 20)),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            style: const TextStyle(color: Colors.white),
            obscureText: show,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      if (show) {
                        show = false;
                      } else {
                        show = true;
                      }
                    });
                  },
                  icon: Icon(
                    show
                        ? FluentSystemIcons.ic_fluent_eye_show_filled
                        : FluentSystemIcons.ic_fluent_eye_hide_regular,
                    color: Colors.white,
                  )),
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.reg?"Already Have an account?," : "New user?,",
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Loginpage(reg: !widget.reg,)));
                  
                  },
                  child: Text(
                    widget.reg? "Sign in" : "Sign Up",
                    style: const TextStyle(color: Colors.red),
                  )),

            ],
          ),
          Center(
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
            }, child: Text(
              widget.reg? "Sign Up" : "Sign In",
              )
            ),
          )
        ],
      ),
    );
  }
}
