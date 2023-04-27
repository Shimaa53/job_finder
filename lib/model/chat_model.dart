
class ChatModel{
  String messageContent;
  String messagetype;
  ChatModel({required this.messageContent, required this.messagetype});


  static List<ChatModel>chat=[
    ChatModel(messageContent: 'Hello', messagetype: 'receiver'),
    ChatModel(messageContent: 'How are you', messagetype: 'receiver'),
    ChatModel(messageContent: 'fine', messagetype: 'sender'),
    ChatModel(messageContent: 'lets play', messagetype: 'receiver'),
    ChatModel(messageContent: 'yalla', messagetype: 'sender'),

  ];
}