import 'package:flutter/material.dart';

class CreatePollScreen extends StatefulWidget {
  const CreatePollScreen({super.key});

  @override
  State<CreatePollScreen> createState() => _CreatePollScreenState();
}

class _CreatePollScreenState extends State<CreatePollScreen> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final questionController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: questionController,
                    decoration: const InputDecoration(
                      labelText: "Poll Question",
                      hintText: "What would you like to ask?",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value){
                      if (value == null || value.isEmpty) {
                        return "Question is required";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
