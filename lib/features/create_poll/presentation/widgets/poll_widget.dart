import 'package:flutter/material.dart';

import '../../data/model/poll_model.dart';

class PollWidget extends StatelessWidget {
  final PollModel poll;

  const PollWidget({
    super.key, required this.poll,
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
          Text(poll.title),
          Text(poll.description ?? "no desc"),
        ],
      ),
    );
  }
}
