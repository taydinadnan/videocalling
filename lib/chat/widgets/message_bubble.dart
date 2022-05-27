import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    Key? key,
    this.profileImageUrl,
    this.message,
    this.date,
  }) : super(key: key);

  final String? profileImageUrl;
  final String? message;
  final String? date;

  @override
  Widget build(BuildContext context) {
    final isReciver = profileImageUrl != null;
    return Row(
      mainAxisAlignment:
          isReciver ? MainAxisAlignment.start : MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (isReciver)
          Padding(
            padding: const EdgeInsets.all(8),
            child: CircleAvatar(
              backgroundColor: Colors.grey[200],
              foregroundImage: NetworkImage(profileImageUrl!),
            ),
          ),
        Flexible(
          child: Column(
            mainAxisAlignment:
                isReciver ? MainAxisAlignment.start : MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                constraints: const BoxConstraints(maxWidth: 275),
                decoration: BoxDecoration(
                  color: isReciver ? Colors.green : Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  message!,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                date!,
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
        if (!isReciver) const SizedBox(width: 12),
      ],
    );
  }
}
