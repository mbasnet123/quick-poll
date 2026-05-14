import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_poll/core/providers/poll_list_notifier.dart';
import 'package:quick_poll/features/create_poll/data/model/poll_model.dart';
import 'package:quick_poll/features/create_poll/presentation/widgets/poll_widget.dart';

import 'core/app/config/route/paths.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  String? question;
  String? description;
  String? pollType;
  IconData? pollTypeIcon;
  final List<PollModel> polls = [];

  @override
  Widget build(BuildContext context) {
    final pollsAsync = ref.watch(pollListNotifierProvider);
    return Scaffold(
      body: SafeArea(
        child: pollsAsync.when(
          data: (polls) {
            if (polls.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.poll_outlined, size: 64, color: Colors.grey),
                    SizedBox(height: 16),
                    Text("No polls yet", style: TextStyle(fontSize: 18)),
                    Text(
                      "Tap + to create one",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              );
            }
            return ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: polls.length,
              itemBuilder: (context, index) {
                final poll = polls[index];
                return PollWidget(poll: poll);
              },
            );
          },
          error: (err, stack) => Center(child: Text('Error: $err')),
          loading: () => const Center(child: CircularProgressIndicator()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push(Paths.createPollScreenRoute.path),
        child: Icon(Icons.add),
      ),
    );
  }
}
