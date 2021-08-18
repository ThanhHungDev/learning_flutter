class User {
  final String id;
  final String name;
  final String email;
  final String created;
  final String updated;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.created,
    required this.updated
  });
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      created: json['created'],
      updated: json['updated'],
    );
  }
}
