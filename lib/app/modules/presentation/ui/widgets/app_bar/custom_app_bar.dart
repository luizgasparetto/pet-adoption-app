import 'package:flutter/material.dart';
import 'package:pet_adoption_app/app/core/utils/custom_icons.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      color: Theme.of(context).backgroundColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              CustomIcons.alignLeft,
              size: size.width * 0.075,
              color: const Color.fromRGBO(111, 111, 111, 1),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Location', style: Theme.of(context).textTheme.headline5),
                Text(
                  'Camera St., Boston',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
            SizedBox(
              width: size.width * 0.1,
              child: const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  'assets/images/profile-picture.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
