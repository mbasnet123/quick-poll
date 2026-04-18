import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_poll/features/create_poll/data/model/poll_model.dart';
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
  final List<PollModel> polls = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            polls.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.poll_outlined, size: 64, color: Colors.grey),
                        SizedBox(height: 16),
                        Text("No polls yet", style: TextStyle(fontSize: 18)),
                        Text(
                          "Tap + to create one",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(padding: EdgeInsets.all(16), itemCount: polls.length, itemBuilder: (context, index) {
                  final poll = polls[index];
                  return PollCard()
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await context.push(Paths.createPollScreenRoute.path);

          if (result != null && result is Map<String, dynamic>) {
            setState(() {
              question = result['question'] as String?;
              description = result['description'] as String?;
              pollType = result['pollType'] as String?;
              pollTypeIcon = result['pollTypeIcon'] as IconData?;
            });
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
