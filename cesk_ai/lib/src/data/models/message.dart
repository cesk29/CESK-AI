enum MessageTypes {
  ai,
  user,
}

class Message {
  Message({
    required this.type,
    required this.content,
  });

  final MessageTypes type;
  final String content;

  static Message fromJson(Map<String, dynamic> json) {
    return json['from'] == MessageTypes.ai.name
        ? MessageAI.fromJson(json)
        : MessageUser.fromJson(json);
  }

  @override
  String toString() => 'Message { type: $type, content: $content }';
}

class MessageAI extends Message {
  MessageAI({
    required String content,
  }) : super(type: MessageTypes.ai, content: content);

  static MessageAI fromJson(Map<String, dynamic> json) {
    return MessageAI(content: json['content']);
  }
}

class MessageUser extends Message {
  MessageUser({
    required String content,
  }) : super(type: MessageTypes.user, content: content);

  static MessageUser fromJson(Map<String, dynamic> json) {
    //static
    return MessageUser(content: json['content']);
  }
}


/*
void main() {
  final json = [
    {
      {
        'type': 'user',
        'message': 'ciao',
      },
      {
        'type': 'assistent',
        'message': 'ciao anche a te',
      },
    }
  ];
  final messages = json
      .map(
        (e) => Message.fromJson(e),
      )
      .toList();
}
*/