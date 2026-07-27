import 'vehiculo_mp.dart';

class VehiculoDto {
  final int     id;
  final String  name;
  final String  price;
  final bool    isActive;
  final String? categoryName;

  const VehiculoDto({
    required this.id,
    required this.name,
    required this.price,
    required this.isActive,
    this.categoryName,
  });

  factory VehiculoDto.fromJson(Map<String, dynamic> json) => VehiculoDto(
    id:           json['id']            as int,
    name:         json['name']          as String,
    price:        json['price']         as String,
    isActive:     json['is_active']     as bool? ?? false,
    categoryName: json['category_name'] as String?,
  );

  Vehiculo toDomain() => Vehiculo(
    id:        id,
    nombre:    name,
    precio:    double.tryParse(price) ?? 0,
    activo:    isActive,
    categoria: categoryName,
  );
}