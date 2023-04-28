
import 'package:jop_finder/view/utilities/app_string.dart';

class ChatModel{
  String messageContent;
  String messagetype;
  ChatModel({required this.messageContent, required this.messagetype});


  static List<ChatModel>chat=[
    ChatModel(messageContent: AppString.recieve1, messagetype: 'receiver'),
    ChatModel(messageContent:  AppString.send1, messagetype: 'sender'),
    ChatModel(messageContent:  AppString.recieve2, messagetype: 'receiver'),
    ChatModel(messageContent:  AppString.send2, messagetype: 'sender'),
    ChatModel(messageContent:  AppString.recieve3, messagetype: 'receiver'),

  ];
}