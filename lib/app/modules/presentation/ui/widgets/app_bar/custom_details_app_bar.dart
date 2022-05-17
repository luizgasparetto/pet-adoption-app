// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomDetailsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomDetailsAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    ValueNotifier<bool> selected = ValueNotifier(false);

    return Container(
      color: Theme.of(context).backgroundColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: const Color.fromRGBO(111, 111, 111, 1),
                size: size.width * 0.075,
              ),
              onPressed: () => Navigator.pop(context),
            ),
            ValueListenableBuilder<bool>(
              valueListenable: selected,
              builder: (_, value, __) {
                if (value) {
                  return Container(
                    width: size.width * 0.13,
                    height: size.height * 0.06,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: Theme.of(context).primaryColor,
                        size: size.width * 0.075,
                      ),
                      onPressed: () => selected.value = !selected.value,
                    ),
                  );
                } else {
                  return IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      color: Theme.of(context).secondaryHeaderColor,
                      size: size.width * 0.075,
                    ),
                    onPressed: () => selected.value = !selected.value,
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
