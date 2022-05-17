// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:pet_adoption_app/app/core/utils/custom_icons.dart';
import 'package:pet_adoption_app/app/modules/domain/entities/animal_entity.dart';

class CustomAnimalCard extends StatelessWidget {
  final AnimalEntity animal;

  CustomAnimalCard({
    Key? key,
    required this.animal,
  }) : super(key: key);

  ValueNotifier<bool> selected = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        height: size.height * 0.18,
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            children: [
              Container(
                width: size.width * 0.27,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Color(int.parse(animal.colorHex)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SizedBox(
                  height: size.height * 0.2,
                  child: Image.asset(
                    animal.allImages[0],
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      animal.name,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(
                      animal.breed,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text(
                      '${animal.gender}, ${animal.age}',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SizedBox(height: size.height * 0.015),
                    Row(
                      children: [
                        Icon(
                          CustomIcons.mapMarker,
                          size: size.height * 0.025,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(width: size.width * 0.01),
                        Text(
                          animal.distance,
                          style: Theme.of(context).textTheme.headline6,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.topLeft,
                child: ValueListenableBuilder<bool>(
                  valueListenable: selected,
                  builder: (_, value, ___) {
                    // Qual a melhor forma de fazer essa validação para trocar o botão?
                    return IconButton(
                      onPressed: () => selected.value = !selected.value,
                      icon: value
                          ? Icon(
                              Icons.favorite,
                              size: size.height * 0.035,
                              color: Theme.of(context).primaryColor,
                            )
                          : Icon(
                              Icons.favorite_border,
                              size: size.height * 0.035,
                              color: Theme.of(context).secondaryHeaderColor,
                            ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
