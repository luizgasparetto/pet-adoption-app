import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:pet_adoption_app/app/modules/domain/entities/animal_entity.dart';
import 'package:pet_adoption_app/app/modules/domain/repositories/i_animal_repository.dart';
import 'package:pet_adoption_app/app/modules/infra/dtos/animal_dto.dart';

class AnimalRepository implements IAnimalRepository {
  @override
  Future<List<AnimalEntity>> getAllAnimals() async {
    final response = await rootBundle.loadString('assets/data/pets_data.json');
    final data = await jsonDecode(response);

    final animalsData = data['animals'] as List;

    return animalsData.map((animal) => AnimalDTO.fromMap(animal)).toList();
  }
}
