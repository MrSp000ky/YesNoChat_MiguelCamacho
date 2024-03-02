
import 'package:flutter/material.dart';


class ChatScreen extends StatelessWidget{
  const ChatScreen({super.key});

@override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(padding: EdgeInsets.all(5),
          child: CircleAvatar(backgroundImage: NetworkImage('https://pbs.twimg.com/media/EkYNldcXsAYO_Vk.jpg'),)),
      title: const Text("Master Chef Chiquito"),
      centerTitle: false,
        ),
      body: const _ChatView()
    );
      
  }
}



class _ChatView extends StatelessWidget {
  const _ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: Container(
              color: Colors.red,
            )),
            const Text("Texto 1"),
            const Text("Texto 2")
          ],
        ),
        )
        );
  }
}