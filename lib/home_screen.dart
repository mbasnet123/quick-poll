import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_poll/features/create_poll/presentation/widgets/poll_widget.dart';

import 'core/app/config/route/paths.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? question;
  String? description;
  String? pollType;
  IconData? pollTypeIcon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Start your poll"),
            SizedBox(height: 8),
            SizedBox(height: 8,),
            if (question != null && pollType != null && pollTypeIcon != null)
              PollWidget(question: question!, pollType: pollType!, pollTypeIcon: pollTypeIcon!)
            else
              Text("Tap + to create a poll"),
            ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async{
        final result = await context.push(Paths.createPollScreenRoute.path);

        if (result != null && result is Map<String, dynamic>){
          setState((){
            question = result['question'] as String?;
            description = result['description'] as String?;
            pollType = result['pollType'] as String?;
            pollTypeIcon = result['pollTypeIcon'] as IconData?;
          });
        }
      },
      child: Text("Poll Screen"),),
    );
  }
}
