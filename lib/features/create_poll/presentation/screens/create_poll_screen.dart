import 'package:flutter/material.dart';
import 'package:quick_poll/core/utils/validation_util.dart';

class CreatePollScreen extends StatefulWidget {
  const CreatePollScreen({super.key});

  @override
  State<CreatePollScreen> createState() => _CreatePollScreenState();
}

class _CreatePollScreenState extends State<CreatePollScreen> {
  final _formKey = GlobalKey<FormState>();
  final questionController = TextEditingController();
  String pollQuestion = "";

  @override
  void dispose(){
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
                  children: [
                    Text("Poll Question"),
                    TextFormField(
                      controller: questionController,
                      decoration: InputDecoration(
                        hintText: "What would you like to ask?",
                        filled: true,
                        fillColor: Colors.yellowAccent,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:BorderSide.none,
                        ),
                      ),
                      validator: ValidationUtil.pollQuestionValidator,
                      onSaved: (value) {
                        pollQuestion = value ?? "";
                      },
                    ),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        final isValidated = _formKey.currentState?.validate() ?? false;
                        if(!isValidated) return;
                        _formKey.currentState!.save();
                        setState(() {
                        });
                        questionController.clear();
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text("Submit"),
                      ),
                    ),
                    if (pollQuestion.isNotEmpty)
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(pollQuestion),
                      )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
