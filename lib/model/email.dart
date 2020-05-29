part of openapi.api;

// Email
class Email {
  
  String email;
  Email();

  @override
  String toString() {
    return 'Email[email=$email, ]';
  }

  fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  
    {
      final _jsonData = json[r'email'];
      email = (_jsonData == null) ? null :
        _jsonData;
    } // _jsonFieldName

  }

  Email.fromJson(Map<String, dynamic> json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {

    final json = <String, dynamic>{};
    if (email != null) {
        json[r'email'] = LocalApiClient.serialize(email);
    }
    return json;
  }
  static List<Email> listFromJson(List<dynamic> json) {
    return json == null ? <Email>[] : json.map((value) => Email.fromJson(value)).toList();
  }

  static Map<String, Email> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Email>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Email.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is Email && runtimeType == other.runtimeType) {
    return 

     email == other.email
    ;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    

    if (email != null) {
      hashCode = hashCode ^ email.hashCode;
    }


    return hashCode;
  }

  Email copyWith({
       String email,
    }) {
    Email copy = Email();
        copy.email = email ?? this.email;
    return copy;
  }
}

