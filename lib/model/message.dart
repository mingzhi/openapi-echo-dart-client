part of openapi.api;

// Message
class Message {
  
  String message;
  Message();

  @override
  String toString() {
    return 'Message[message=$message, ]';
  }

  fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  
    {
      final _jsonData = json[r'message'];
      message = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName

  }

  Message.fromJson(Map<String, dynamic> json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {

    final json = <String, dynamic>{};
    if (message != null) {
        json[r'message'] = LocalApiClient.serialize(message);
    }
    return json;
  }
  static List<Message> listFromJson(List<dynamic> json) {
    return json == null ? <Message>[] : json.map((value) => Message.fromJson(value)).toList();
  }

  static Map<String, Message> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Message>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Message.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is Message && runtimeType == other.runtimeType) {
    return 

     message == other.message
    ;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    

    if (message != null) {
      hashCode = hashCode ^ message.hashCode;
    }


    return hashCode;
  }

  Message copyWith({
       String message,
    }) {
    Message copy = Message();
        copy.message = message ?? this.message;
    return copy;
  }
}

