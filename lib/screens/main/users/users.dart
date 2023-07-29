import 'package:chat_app_starter_project/components/custom_text.dart';
import 'package:flutter/material.dart';

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomText("Users"),
    );
  }
}
