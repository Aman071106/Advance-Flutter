import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String username;
  final String userid;
  const Profile({super.key, required this.userid, required this.username});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [Text("Profile"), Text(userid), Text(username)]),
    );
  }
}
