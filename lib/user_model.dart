// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {
  final int id;
  final String name;
  final String adderes;
  UserModel({
    required this.id,
    required this.name,
    required this.adderes,
  });
//halo ini lagi coding
  int getInt() {
    return 0;
  }

  UserModel copyWith({
    int? id,
    String? name,
    String? adderes,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      adderes: adderes ?? this.adderes,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'adderes': adderes,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as int,
      name: map['name'] as String,
      adderes: map['adderes'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserModel(id: $id, name: $name, adderes: $adderes)';

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name && other.adderes == adderes;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ adderes.hashCode;
}
