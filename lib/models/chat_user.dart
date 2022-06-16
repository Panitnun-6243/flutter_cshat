class ChatUser {
  final String uid;
  final String name;
  final String email;
  final String imageURL;
  late DateTime lastActive;

  ChatUser(
      {required this.uid,
      required this.email,
      required this.name,
      required this.imageURL,
      required this.lastActive}) {}

  factory ChatUser.fromJSON(Map<String, dynamic> _json) {
    return ChatUser(
      uid: _json["uid"],
      email: _json["email"],
      name: _json['name'],
      imageURL: _json["image"],
      lastActive: _json["last_active"].toDate(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "email": email,
      "name": name,
      "last_active": lastActive,
      "image": imageURL,
    };
  }

  String lastDayActive() {
    return "${lastActive.month}/${lastActive.day}/${lastActive.year}";
  }

  bool wasRecentlyActive() {
    return DateTime.now().difference(lastActive).inHours < 2;
  }
}
