import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_proj/project/routes/app_route_constants.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("Home"),
          ElevatedButton(
            onPressed: () {
              context.goNamed(
                MyAppRouteConstants.profilepageRoute,
                pathParameters: {'userid': "Amn123", 'username': "AMAN GUPTA"},
              );
            },
            child: Text("profile"),
          ),
          ElevatedButton(
            onPressed: () {
              context.goNamed(MyAppRouteConstants.searchpageRoute);
            },
            child: Text("search"),
          ),
        ],
      ),
    );
  }
}
