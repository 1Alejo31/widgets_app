import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackBar(BuildContext context) {
    //Permite cerrar el primer snackbar antes de mostrar otro
    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    ));
  }

  void openDialog(BuildContext context) {
    //El bilder sigmifica q es algo q se construira en tiempo de ejecucion
    showDialog(
      context: context,
      //Se obliga al usuario q seleccione una opcion
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('¿Estas seguro?'),
        content: const Text(
            'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Molestiae sit sapiente quas voluptas unde hic ex obcaecati, qui consequuntur necessitatibus quia fugiat repellat nemo quam, deserunt voluptatum perferendis. Ratione, vero.'),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Cancelar'),
          ),
          FilledButton(
            onPressed: () => context.pop(),
            child: const Text('Aceptar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snacbars y Diálogo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Molestiae sit sapiente quas voluptas unde hic ex obcaecati, qui consequuntur necessitatibus quia fugiat repellat nemo quam, deserunt voluptatum perferendis. Ratione, vero.'),
                ]);
              },
              child: const Text('Licencias Usadas'),
            ),
            FilledButton(
              onPressed: () {
                openDialog(context);
              },
              child: const Text('Mostrar dialogo'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Stanckbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackBar(context),
      ),
    );
  }
}
