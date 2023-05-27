import 'package:flutter/material.dart';

import '../Widgets/chat_page.dart';
import '../models/chat_model.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  List<ChatModel> chatmodels = [
    ChatModel(
      name: "Ahmed",
      isGroup: false,
      currentMessage: "Hi Everyone",
      time: "4:00",
      icon: "person.svg",
      id: 1,
      status: '',
    ),
    ChatModel(
      name: "Mahmoud",
      isGroup: false,
      currentMessage: "Hi Ahmed",
      time: "13:00",
      icon: "person.svg",
      id: 2,
      status: '',
    ),

    ChatModel(
      name: "Dola",
      isGroup: false,
      currentMessage: "سلام عليكم",
      time: "8:00",
      icon: "person.svg",
      id: 3,
      status: '',
    ),

    ChatModel(
      name: "Abdo",
      isGroup: false,
      currentMessage: "Hi",
      time: "2:00",
      icon: "person.svg",
      id: 4,
      status: '',
    ),

    // ChatModel(
    //   name: "NodeJs Group",
    //   isGroup: true,
    //   currentMessage: "New NodejS Post",
    //   time: "2:00",
    //   icon: "group.svg",
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Whatsapp "),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext contesxt) {
              return [
                const PopupMenuItem(
                  value: "New group",
                  child: Text("New group"),
                ),
                const PopupMenuItem(
                  value: "New broadcast",
                  child: Text("New broadcast"),
                ),
                const PopupMenuItem(
                  value: "Whatsapp Web",
                  child: Text("Whatsapp Web"),
                ),
                const PopupMenuItem(
                  value: "Starred messages",
                  child: Text("Starred messages"),
                ),
                const PopupMenuItem(
                  value: "Settings",
                  child: Text("Settings"),
                ),
              ];
            },
          )
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          // CameraPage(),
          ChatPage(
            chatmodels: chatmodels,
            sourchat: chatmodels[0],
          ),

          const Text("STATUS"),
          const Text("Calls"),
        ],
      ),
    );
  }
}
