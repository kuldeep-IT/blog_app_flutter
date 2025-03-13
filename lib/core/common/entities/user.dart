// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  final String id;
  final String email;
  final String name;

  User({
    required this.id,
    required this.email,
    required this.name,
  });

  //allow us the change of propery/method of final
  //because id, email, name are final, by using copywith we could modify
  User copyWith({
    String? id,
    String? email,
    String? name,
  }) {
    return User(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
    );
  }
}
