import 'package:flutter/material.dart';

import '../models/chat_model.dart';
import 'custom_card.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key, required this.chatmodels, this.sourchat});
  final List<ChatModel> chatmodels;
  final ChatModel? sourchat;

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: widget.chatmodels.length,
        itemBuilder: (contex, index) => CustomCard(
          chatModel: widget.chatmodels[index],
          sourchat: widget.sourchat,
        ),
      ),
    );
  }
}
