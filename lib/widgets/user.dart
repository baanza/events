import 'package:flutter/material.dart';

class UserField extends StatefulWidget {
  const UserField({super.key});

  @override
  State<UserField> createState() => _UserFieldState();
}

class _UserFieldState extends State<UserField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("UserName", style: TextStyle(color: Colors.white, fontSize: 18)),
        TextFormField(
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20
          ),
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12)
              )
            )
          ),
        ),
        const SizedBox(height: 20,)
      ],
    );
  }
}
