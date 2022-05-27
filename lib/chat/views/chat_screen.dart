import 'package:flutter/material.dart';
import 'package:videocalling/chat/views/video_call_screen.dart';
import 'package:videocalling/chat/widgets/message_bubble.dart';
import 'package:videocalling/chat/widgets/message_text_field.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const VideoCallScreen()),
            ),
            icon: const Icon(Icons.video_camera_front),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.only(bottom: 16),
              reverse: true,
              itemBuilder: (_, index) => _messages[index],
              separatorBuilder: (_, __) => const SizedBox(height: 16),
              itemCount: _messages.length,
            ),
          ),
          const MessageTextField(),
        ],
      ),
    );
  }
}

const _messages = <MessageBubble>[
  MessageBubble(
    profileImageUrl:
        "https://images.unsplash.com/photo-1650419743194-c28ccbbcb7b8",
    message: ' This app would be perfect if it had video chat ! ',
    date: ' Apr 22 , 8:59 PM ',
  ),
  MessageBubble(
    message:
        ' Aenean sagittis , justo malesuada sagittis dapibus , magna urna euismod la',
    date: ' Apr 22 , 6:32 PM ',
  ),
  MessageBubble(
    profileImageUrl:
        "https://images.unsplash.com/photo-1650419743194-c28ccbbcb7b8",
    message: ' This app would be perfect if it had video chat ! ',
    date: ' Apr 22 , 5:47 PM ',
  ),
  MessageBubble(
    message: ' Vivamus sollicitudin lectus vitae aliquet cursus . ',
    date: ' Apr 22 , 3:23 PM ',
  ),
  MessageBubble(
    profileImageUrl:
        "https://images.unsplash.com/photo-1650419743194-c28ccbbcb7b8",
    message: ' This app would be perfect if it had video chat ! ',
    date: ' Apr 22 , 5:47 PM ',
  ),
  MessageBubble(
    profileImageUrl:
        "https://images.unsplash.com/photo-1650419743194-c28ccbbcb7b8",
    message: ' This app would be perfect if it had video chat ! ',
    date: ' Apr 22 , 5:47 PM ',
  ),
  MessageBubble(
    message: ' Vivamus sollicitudin lectus vitae aliquet cursus . ',
    date: ' Apr 22 , 3:23 PM ',
  ),
];
