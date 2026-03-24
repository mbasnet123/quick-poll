import 'package:flutter/material.dart';

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
    return const Placeholder();
  }
}
