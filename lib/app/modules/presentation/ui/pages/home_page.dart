import 'package:flutter/material.dart';
import 'package:pet_adoption_app/app/modules/domain/entities/animal_entity.dart';
import 'package:pet_adoption_app/app/modules/infra/repositories/animal_repository.dart';
import 'package:pet_adoption_app/app/modules/presentation/ui/widgets/custom_animal_card.dart';
import 'package:pet_adoption_app/app/modules/presentation/ui/widgets/app_bar/custom_app_bar.dart';
import 'package:pet_adoption_app/app/modules/presentation/ui/widgets/custom_row_filter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final animalsRepository = AnimalRepository();

    return Scaffold(
      appBar: const CustomAppBar(),
      backgroundColor: Theme.of(context).dialogBackgroundColor,
      body: Container(
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).dialogBackgroundColor.withOpacity(0.7),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15),
            ),
          ),
          child: CustomScrollView(
            slivers: [
              const CustomRowFilter(),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: FutureBuilder(
                    future: animalsRepository.getAllAnimals(),
                    builder: ((context, snapshot) {
                      if (snapshot.hasData) {
                        final animals = snapshot.data as List<AnimalEntity>;

                        return ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: animals.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () => Navigator.pushNamed(
                                context,
                                '/details',
                                arguments: animals[index],
                              ),
                              child: CustomAnimalCard(animal: animals[index]),
                            );
                          },
                        );
                      }
                      return Container();
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
