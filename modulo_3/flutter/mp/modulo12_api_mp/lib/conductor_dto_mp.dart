class ConductorDto {
  final int id;
  final String name;
  final String email;

  const ConductorDto({
    required this.id,
    required this.name,
    required this.email,
  });

  factory ConductorDto.fromJson(Map<String, dynamic> json) => ConductorDto(
    id:    json['id']    as int,
    name:  json['name']  as String,
    email: json['email'] as String,
  );
}