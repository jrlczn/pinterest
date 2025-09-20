import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    // 🔹 Your custom users and their messages
    final List<Map<String, String>> messages = [
      {"name": "Justin", "message": "Gusto mo bang maging famous?"},
      {"name": "Takyo The Great", "message": "Kamusta ka kaibigan?"},
      {"name": "Jessieboi", "message": "Asan na pera ko!!!"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Messages"),
        backgroundColor: Colors.black,
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(size.width * 0.03),
        itemCount: messages.length,
        separatorBuilder: (_, __) => const Divider(color: Colors.white24),
        itemBuilder: (context, index) {
          final msg = messages[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[700],
              child: Text(
                msg["name"]![0], // first letter of name
                style: const TextStyle(color: Colors.white),
              ),
            ),
            title: Text(
              msg["name"]!,
              style: const TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              msg["message"]!,
              style: const TextStyle(color: Colors.white70),
            ),
            trailing: const Icon(Icons.chevron_right, color: Colors.white70),
          );
        },
      ),
    );
  }
}
