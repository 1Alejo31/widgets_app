import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/buttons/buttons_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
        centerTitle: false,
      ),
      body: const _HomeView(),
    );
  }
}

//Construtyendo los contenedores
class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    //Cuando lleva la palabra builder es por q se va a crear en tiempo de ejecucion
    return ListView.builder(
      itemCount: appMenuItems.length,
      //Recorre la cantidad de items
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];

        return _CustomListTitle(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: colors.primary,
      ),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: () {
        /*
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ButtonsScreen(),
          ),
        );
        */
        Navigator.pushNamed(context, menuItem.link);
      },
    );
  }
}
