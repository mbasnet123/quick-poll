import 'package:flutter/material.dart';
import 'package:quick_poll/core/app/theme_extension.dart';
import 'package:quick_poll/core/utils/validation_util.dart';
import 'package:quick_poll/shared/widgets/qp_button.dart';

import '../widgets/poll_text_filled_header.dart';

class CreatePollScreen extends StatefulWidget {
  const CreatePollScreen({super.key});

  @override
  State<CreatePollScreen> createState() => _CreatePollScreenState();
}

class _CreatePollScreenState extends State<CreatePollScreen> {
  final _formKey = GlobalKey<FormState>();
  final questionController = TextEditingController();
  final descriptionController = TextEditingController();
  String pollDescription = "";
  String pollQuestion = "";

  @override
  void dispose() {
    questionController.dispose();
    super.dispose();
  }

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
                        )
                      ),
                      onSaved: (value) {
                        pollDescription = value ?? "";
                      },
                    ),

                    SizedBox(height: 10,),

                    Text("POLL TYPE"),


                    SizedBox(height: 10,),


                    FilledCTAButton(
                      onPressed: () {
                        final isValidated =
                            _formKey.currentState?.validate() ?? false;
                        if (!isValidated) return;
                        _formKey.currentState!.save();
                        setState(() {});
                        questionController.clear();
                      },
                      text: "Create Poll",
                      isExpanded: true,
                    ),
                    if (pollQuestion.isNotEmpty) SizedBox(height: 10),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
