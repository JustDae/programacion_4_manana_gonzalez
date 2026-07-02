class UserDto {
  final int id;
  final String name;
  final String email;

  const UserDto({
    required this.id,
    required this.name,
    required this.email,
  });

  factory UserDto.fromJson(Map<String, dynamic> json) => UserDto(
    id:    json['id']    as int,
    name:  json['name']  as String,
    email: json['email'] as String,
  );
}