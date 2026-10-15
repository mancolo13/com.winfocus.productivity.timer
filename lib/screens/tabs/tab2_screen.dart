import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final tasks = [
      {'title': 'Finalize sprint documentation', 'pomo': '2/2 Pomodoros', 'done': true},
      {'title': 'Optimize database SQL indices', 'pomo': '1/3 Pomodoros', 'done': false},
      {'title': 'Review pending Pull Requests', 'pomo': '0/2 Pomodoros', 'done': false},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • Tasks'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("Today's Task List", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            ...tasks.map((t) => Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(14)),
              child: Row(
                children: [
                  Icon(t['done'] as bool ? Icons.check_circle : Icons.radio_button_unchecked, color: t['done'] as bool ? AppTheme.primaryColor : Colors.white38),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(t['title'] as String, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                        Text(t['pomo'] as String, style: const TextStyle(color: Colors.white60, fontSize: 12)),
                      ],
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
