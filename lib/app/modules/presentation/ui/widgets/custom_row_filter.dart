import 'package:flutter/material.dart';
import 'package:pet_adoption_app/app/core/utils/custom_icons.dart';
import 'package:pet_adoption_app/app/modules/presentation/ui/widgets/custom_filter_card.dart';

class CustomRowFilter extends StatefulWidget {
  const CustomRowFilter({Key? key}) : super(key: key);

  @override
  State<CustomRowFilter> createState() => _CustomRowFilterState();
}

class _CustomRowFilterState extends State<CustomRowFilter> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 25, top: 25),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Container(
                width: size.width * 0.13,
                height: size.height * 0.07,
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  CustomIcons.settings,
                  color: Theme.of(context).secondaryHeaderColor,
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: size.height * 0.07,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    CustomFilterCard(
                      titleCard: 'Dogs',
                      iconData: CustomIcons.dog,
                    ),
                    CustomFilterCard(
                      titleCard: 'Cats',
                      iconData: CustomIcons.cat,
                    ),
                    CustomFilterCard(
                      titleCard: 'Birds',
                      iconData: CustomIcons.dove,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
