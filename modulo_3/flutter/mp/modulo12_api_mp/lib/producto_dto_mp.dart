import 'producto_mp.dart';

class VehículoDto {
  final int     id;
  final String  name;
  final String  price;
  final bool    isActive;
  final String? categoryName;

  const VehículoDto({
    required this.id,
    required this.name,
    required this.price,
    required this.isActive,
    this.categoryName,
  });

  factory VehículoDto.fromJson(Map<String, dynamic> json) => VehículoDto(
    id:           json['id']            as int,
    name:         json['name']          as String,
    price:        json['price']         as String,
    isActive:     json['is_active']     as bool? ?? false,
    categoryName: json['category_name'] as String?,
  );

  Vehículo toDomain() => Vehículo(
    id:        id,
    nombre:    name,
    precio:    double.tryParse(price) ?? 0,
    activo:    isActive,
    categoria: categoryName,
  );
}