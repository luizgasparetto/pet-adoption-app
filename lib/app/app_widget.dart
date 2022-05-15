import 'package:flutter/material.dart';
import 'package:pet_adoption_app/app/core/themes/default_theme.dart';
import 'package:pet_adoption_app/app/modules/presentation/ui/pages/animal_details_page.dart';
import 'package:pet_adoption_app/app/modules/presentation/ui/pages/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PetAdoption',
      debugShowCheckedModeBanner: false,
      theme: DefaultTheme.getTheme(context),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/details': (context) => const AnimalDetailsPage(),
      },
    );
  }
}
