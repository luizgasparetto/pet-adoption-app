import 'package:pet_adoption_app/app/modules/domain/entities/animal_entity.dart';

class AnimalDTO extends AnimalEntity {
  AnimalDTO({
    required super.name,
    required super.breed,
    required super.gender,
    required super.age,
    required super.distance,
    required super.description,
    required super.colorHex,
    required super.allImages,
  });

  factory AnimalDTO.fromMap(Map<String, dynamic> map) {
    return AnimalDTO(
      name: map['name'],
      breed: map['breed'],
      gender: map['gender'],
      age: map['age'],
      distance: map['distance'],
      description: map['description'],
      colorHex: map['backgroundColor'],
      allImages: List<String>.from(map['allImages']),
    );
  }
}
