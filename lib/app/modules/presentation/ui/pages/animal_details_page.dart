import 'package:flutter/material.dart';
import 'package:pet_adoption_app/app/core/utils/custom_icons.dart';
import 'package:pet_adoption_app/app/modules/domain/entities/animal_entity.dart';
import 'package:pet_adoption_app/app/modules/presentation/ui/widgets/app_bar/custom_details_app_bar.dart';
import 'package:pet_adoption_app/app/modules/presentation/ui/widgets/custom_animal_photos.dart';
import 'package:pet_adoption_app/app/modules/presentation/ui/widgets/custom_button.dart';

class AnimalDetailsPage extends StatelessWidget {
  const AnimalDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final animal = ModalRoute.of(context)!.settings.arguments as AnimalEntity;

    final animalIcon =
        animal.gender == 'Male' ? CustomIcons.male : CustomIcons.female;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: CustomDetailsAppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 20, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      animal.name,
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(fontSize: 34),
                    ),
                    Icon(
                      animalIcon,
                      color: Theme.of(context).secondaryHeaderColor,
                      size: size.height * 0.045,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      animal.breed,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(
                      animal.age,
                      style: Theme.of(context).textTheme.headline3,
                    )
                  ],
                ),
                SizedBox(height: size.height * 0.01),
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
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontSize: 15),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: CustomAnimalPhotos(animal: animal),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 30, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About",
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(fontSize: 22),
                ),
                Text(
                  animal.description,
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontSize: 13),
                ),
              ],
            ),
          ),
          const Spacer(),
          const CustomButton(),
        ],
      ),
    );
  }
}
