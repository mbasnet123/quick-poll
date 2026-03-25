import 'package:flutter/material.dart';
import 'package:quick_poll/shared/enums/poll_type.dart';

class PollDetailsScreen extends StatelessWidget {
  final String question;
  final String description;
  final String pollType;
  final IconData pollTypeIcon;

  const PollDetailsScreen({
    super.key,
    required this.question,
    required this.description,
    required this.pollType,
    required this.pollTypeIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Poll Details"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
        child: Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text("Question")),
            Center(child: Text(question)),
            if (description.isNotEmpty)...[
              Center(child: Text("description"),),
              Center(child: Text(description),)
            ],
            Center(child: Text("Poll Type"),),
            Center(child: Text(pollType),),
            Icon(pollTypeIcon),
          ],
        ),
      ),
    );
  }
}
