import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_poll/core/app/theme_extension.dart';
import 'package:quick_poll/core/storage/local/tables.dart';
import 'package:quick_poll/core/utils/validation_util.dart';
import 'package:quick_poll/features/create_poll/data/model/poll_model.dart';
import 'package:quick_poll/shared/widgets/qp_button.dart';

import '../../../../core/app/config/route/paths.dart';
import '../../../../shared/enums/poll_type.dart';
import '../../domain/entities/poll_option.dart';
import '../widgets/poll_text_filled_header.dart';
import '../widgets/segment_item.dart';

class CreatePollScreen extends StatefulWidget {
  const CreatePollScreen({super.key});

  @override
  State<CreatePollScreen> createState() => _CreatePollScreenState();
}

class _CreatePollScreenState extends State<CreatePollScreen> {
  final _formKey = GlobalKey<FormState>();
  final questionController = TextEditingController();
  final descriptionController = TextEditingController();
  final optionController = TextEditingController();
  String pollDescription = "";
  String pollQuestion = "";
  int selectedPollTypeIndex = 0;

  PollType selectedType = PollType.yesNo;
  final List<String> customOptions = [];

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

  void _addOption() {
    if (optionController.text.isEmpty) return;
    if (customOptions.length >= 5) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Maximum 5 options allowed")));
      return;
    }
    setState(() {
      customOptions.add(optionController.text);
      optionController.clear();
    });
  }

  void _removeOption(int index) {
    setState(() => customOptions.removeAt(index));
  }

  void _onCreatePoll() {
    if (!_formKey.currentState!.validate()) return;

    // validation for multipleChoice
    if (selectedType == PollType.multipleChoice && customOptions.length < 2) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Please add at least  2 options")));
      return;
    }

    List<PollOption> options = [];

    switch (selectedType) {
      case PollType.yesNo:
        options = [
          PollOption(id: '1', optionText: 'Yes', order: 0),
          PollOption(id: '2', optionText: 'No', order: 1),
        ];
        break;

      case PollType.multipleChoice:
        options = customOptions
            .asMap()
            .entries
            .map(
              (e) =>
              PollOption(
                id: e.key.toString(),
                optionText: e.value,
                order: e.key,
              ),
        )
            .toList();
        break;

      case PollType.rating:
        options = List.generate(
          5,
              (i) => PollOption(id: i.toString(), optionText: "i"),
        );
        break;

      case PollType.text:
        options = [];
        break;
    }

    final poll = PollModel(id: DateTime.now().millisecondsSinceEpoch.toString(),
        title: questionController.text,
        creatorId: 'current_user',
        creatorName: 'anonymous',
        createdAt: DateTime.now(),
        pollType: selectedType,
        status: status,
        questions: questions)
  }

  final List<SegmentItem> segments = [
    SegmentItem(icon: Icons.format_list_bulleted, label: "Multiple"),
    SegmentItem(icon: Icons.star_border, label: "Rating"),
    SegmentItem(icon: Icons.thumb_up_outlined, label: "Yes/No"),
  ];

  @override
  void dispose() {
    questionController.dispose();
    super.dispose();
  }

  // void _onCreatePoll() {
  //   final isValidated = _formKey.currentState?.validate() ?? false;
  //   if (!isValidated) return;
  //   _formKey.currentState!.save();
  //
  //   final question = pollQuestion;
  //   final description = pollDescription;
  //   final pollType = segments[selectedPollTypeIndex].label;
  //
  //   questionController.clear();
  //   descriptionController.clear();
  //
  //   // context.push(
  //   //   Paths.pollDetailsScreenRoute.path,
  //   //   extra: {
  //   //     'question': question,
  //   //     'description': description,
  //   //     'pollType': pollType,
  //   //     'pollTypeIcon': segments[selectedPollTypeIndex].icon,
  //   //   },
  //   // );
  //
  //   context.pop({
  //     'question': pollQuestion,
  //     'description': pollDescription,
  //     'pollType': pollType,
  //     'pollTypeIcon': segments[selectedPollTypeIndex].icon,
  //   }
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Poll Question"),
                    PollTextFiledHeader(heading: "Poll Question"),
                    TextFormField(
                      controller: questionController,
                      decoration: InputDecoration(
                        hintText: "What would you like to ask?",
                        filled: true,
                        fillColor: Colors.yellowAccent,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      validator: ValidationUtil.pollQuestionValidator,
                      onSaved: (value) {
                        pollQuestion = value ?? "";
                      },
                    ),
                    SizedBox(height: 10),
                    PollTextFiledHeader(heading: "Description(Optional)"),

                    TextFormField(
                      controller: descriptionController,
                      decoration: InputDecoration(
                        hintText: "Add context or details",
                        filled: true,
                        fillColor: context.colorScheme.primary,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      onSaved: (value) {
                        pollDescription = value ?? "";
                      },
                    ),

                    SizedBox(height: 10),

                    Text("POLL TYPE"),

                    SizedBox(height: 10),

                    FilledCTAButton(
                      onPressed: _onCreatePoll,
                      text: "Create Poll",
                      isExpanded: true,
                    ),
                    if (pollQuestion.isNotEmpty) ...[
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(pollQuestion),
                      ),
                    ],
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(4),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(segments.length, (index) {
                    final isSelected = selectedPollTypeIndex == index;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedPollTypeIndex = index;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        margin: EdgeInsets.only(
                          right: index != segments.length - 1 ? 8 : 0,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: isSelected ? Colors.blue : Colors.transparent,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              segments[index].icon,
                              color: isSelected ? Colors.white : Colors.black,
                            ),
                            SizedBox(width: 8),
                            Text(
                              segments[index].label,
                              style: TextStyle(
                                color: isSelected ? Colors.white : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
