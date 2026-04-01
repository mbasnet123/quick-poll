import 'package:flutter/material.dart';

class PollWidget extends StatelessWidget {
  final String question;
  final String? description;
  final String pollType;
  final IconData pollTypeIcon;

  const PollWidget({
    super.key,
    required this.question,
    this.description,
    required this.pollType,
    required this.pollTypeIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xffE8E5E5FF),
        borderRadius: BorderRadius.circular(32),
      ),
      child: Column(
        children: [
          Text(question),
          Text(description ?? "no desc"),
        ],
      ),
    );
  }
}
