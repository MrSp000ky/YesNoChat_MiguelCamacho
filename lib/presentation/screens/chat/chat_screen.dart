
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_practica_29feb/domain/entities/message.dart';
import 'package:flutter_practica_29feb/presentation/providers/chat_provider.dart';
import 'package:flutter_practica_29feb/presentation/shared/message_field_box.dart';
import 'package:flutter_practica_29feb/presentation/widget/his_message_bubble.dart';
import 'package:flutter_practica_29feb/presentation/widget/my_messabe_bubble.dart';


class ChatScreen extends StatelessWidget{
  const ChatScreen({super.key});

@override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(5),
          child: CircleAvatar(backgroundImage: NetworkImage('https://pbs.twimg.com/media/EkYNldcXsAYO_Vk.jpg'),)
          ),
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
    final ChatProvider chatProvider = context.watch<ChatProvider>();
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
                controller: chatProvider.scrollController,
                  itemCount: chatProvider.messageList.length,
                  itemBuilder: ((context, index) {
                    return (chatProvider.messageList[index].fromWho ==
                            FromWho.hers)
                        ? HisMessageBubble(
                            message: chatProvider.messageList[index].text,
                            imageUrl: chatProvider.messageList[index].imageURL,
                          )
                        : MyMessageBubble(
                            message: chatProvider.messageList[index].text);
                  }))),
          MessageFieldBox(
            onValue: (value) => chatProvider.sendMessage(value),
          )
        ],
      ),
    ));
  }
}
