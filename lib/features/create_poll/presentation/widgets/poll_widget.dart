import 'package:flutter/material.dart';

import '../../../../shared/enums/poll_type.dart';
import '../../data/model/poll_model.dart';

class PollWidget extends StatelessWidget {
  final PollModel poll;

  const PollWidget({
    super.key, required this.poll,
  });

  IconData _getTypeIcon(PollType type) {
    switch (type) {
      case PollType.yesNo:
        return Icons.thumb_up_outlined;
      case PollType.multipleChoice:
        return Icons.format_list_bulleted;
      case PollType.rating:
        return Icons.star_border;
      case PollType.text:
        return Icons.text_fields;
    }
  }

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
