import 'package:flutter/material.dart';
import 'package:pet_adoption_app/app/modules/domain/entities/animal_entity.dart';
import 'package:pet_adoption_app/app/modules/presentation/ui/widgets/custom_animal_box.dart';

class CustomAnimalPhotos extends StatelessWidget {
  final AnimalEntity animal;

  const CustomAnimalPhotos({Key? key, required this.animal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: size.width * 0.3,
            height: size.height * 0.45,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: animal.allImages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: CustomAnimalBox(imageAsset: animal.allImages[index]),
                );
              },
            ),
          ),
          const SizedBox(width: 30),
          Stack(
            children: [
              Container(
                width: size.width * 0.545,
                height: size.height * 0.45,
                decoration: BoxDecoration(
                  color: Color(int.parse(animal.colorHex)),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(200),
                    bottomLeft: Radius.circular(200),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 10),
                child: SizedBox(
                  width: size.width * 0.5,
                  height: size.height * 0.4,
                  child: Image.asset(
                    animal.allImages[0],
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
