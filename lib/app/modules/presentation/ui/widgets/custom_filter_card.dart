import 'package:flutter/material.dart';

class CustomFilterCard extends StatelessWidget {
  final String titleCard;
  final IconData iconData;

  CustomFilterCard({
    Key? key,
    required this.titleCard,
    required this.iconData,
  }) : super(key: key);

  ValueNotifier<bool> selected = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: InkWell(
        onTap: () => selected.value = !selected.value,
        child: ValueListenableBuilder<bool>(
          valueListenable: selected,
          builder: (_, value, __) {
            return Container(
              width: size.width * 0.25,
              height: size.height * 0.07,
              decoration: BoxDecoration(
                color: value
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    iconData,
                    color: value
                        ? Colors.white
                        : Theme.of(context).secondaryHeaderColor,
                  ),
                  Text(
                    titleCard,
                    style: value
                        ? Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(color: Colors.white)
                        : Theme.of(context).textTheme.headline3,
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
