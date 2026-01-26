import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'core/app/config/route/paths.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Start your poll"),
            ElevatedButton(onPressed: (){
              context.go(Paths.createPollScreenRoute.path);
            }, child: Text("Poll Screen"))
          ],
        ),
      ),
    );
  }
}
