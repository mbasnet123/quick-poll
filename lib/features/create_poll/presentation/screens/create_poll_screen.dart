import 'package:flutter/material.dart';

class CreatePollScreen extends StatefulWidget {
  const CreatePollScreen({super.key});

  @override
  State<CreatePollScreen> createState() => _CreatePollScreenState();
}

class _CreatePollScreenState extends State<CreatePollScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Poll Question",
              hintText: "What would you like to ask?",
              border: OutlineInputBorder(),
            ),
          )
        ],
      ),
    );
  }
}
