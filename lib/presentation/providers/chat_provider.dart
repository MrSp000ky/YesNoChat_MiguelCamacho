import 'package:flutter/cupertino.dart';
import 'package:flutter_practica_29feb/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: 'Jefe, usted sabe como hacer unas pizzas bien maniacas?', fromWho: FromWho.me),
    Message(text: 'Tu que crees mijo', fromWho: FromWho.hers,
    imageURL: 'https://yesno.wtf/assets/yes/13-c3082a998e7758be8e582276f35d1336.gif'),

    Message(text: 'Y si le pido unas quesadillas tambien jala?', fromWho: FromWho.me),

    Message(text: 'Me ofende la pregunta.', fromWho: FromWho.hers,
    imageURL: 'https://yesno.wtf/assets/yes/13-c3082a998e7758be8e582276f35d1336.gif'),


  ];


  Future<void> sendMessage(String text) async {
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    notifyListeners();
  }

  
}