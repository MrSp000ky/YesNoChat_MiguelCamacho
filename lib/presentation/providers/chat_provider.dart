import 'package:flutter/cupertino.dart';
import 'package:flutter_practica_29feb/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: '', fromWho: FromWho.me),
    Message(text: 'hola ', fromWho: FromWho.me),
    Message(text: 'como estas?', fromWho: FromWho.hers),

  ];
}