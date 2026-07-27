class ViajeDto {
  final int id;
  final String title;
  final bool completed;

  const ViajeDto({
    required this.id,
    required this.title,
    required this.completed,
  });

  factory ViajeDto.fromJson(Map<String, dynamic> json) => ViajeDto(
    id:        json['id']        as int,
    title:     json['title']     as String,
    completed: json['completed'] as bool,
  );
}