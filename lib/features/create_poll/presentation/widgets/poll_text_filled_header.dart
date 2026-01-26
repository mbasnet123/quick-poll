import 'package:flutter/material.dart';

class PollTextFiledHeader extends StatelessWidget {
  const PollTextFiledHeader({
    super.key,
    required this.heading,
  });
  final String heading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: Text(heading, style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500
      )),
    );
  }
}
