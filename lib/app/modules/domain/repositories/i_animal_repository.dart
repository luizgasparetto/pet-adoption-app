import 'package:pet_adoption_app/app/modules/domain/entities/animal_entity.dart';

abstract class IAnimalRepository {
  Future<List<AnimalEntity>> getAllAnimals();
}
