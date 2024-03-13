import 'package:flutter/cupertino.dart';
import 'package:flutter_practica_29feb/config/theme/helpers/get_yes_no_answer.dart';
import 'package:flutter_practica_29feb/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  
  final ScrollController scrollController = ScrollController();
  final GetYesNoAnser getYesNoAnser = GetYesNoAnser();

  List<Message> messageList = [];


  Future<void> sendMessage(String text) async {
    if (text.isEmpty)return;
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    
      await herReply();
    
    notifyListeners();
    moveScrollToBottom();
  }

  Future <void> moveScrollToBottom()async{
    await Future.delayed(const Duration(milliseconds: 100));
    scrollController.animateTo(scrollController.position.maxScrollExtent, duration: const Duration(milliseconds: 300), curve: Curves.bounceIn);

  }

  Future<void> herReply()async{
    final herMessage = await getYesNoAnser.getAnswer();
    messageList.add(herMessage);
  }
  
}