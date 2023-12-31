import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChargerScreen extends ConsumerWidget {
  static const name = 'theme_changer_screen';

  const ThemeChargerScreen({super.key});

  //Trayendo el estado de isDartkmodeProvider

  @override
  Widget build(BuildContext context, ref) {
    final bool stateDarkmode = ref.watch(themeNotifierProvider).isDarkmode;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme changer'),
        actions: [
          IconButton(
            icon: stateDarkmode
                ? const Icon(Icons.dark_mode_outlined)
                : const Icon(Icons.light_mode_outlined),
            onPressed: () {
              //ref.read(isDarkmodeProvider.notifier).update((state) => !state);
              ref.read(themeNotifierProvider.notifier).toogleDarkmode();
            },
          ),
        ],
      ),
      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    final int selectedColor = ref.watch(themeNotifierProvider).selectColor;

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final color = colors[index];
        return RadioListTile(
          title: Text(
            'Este color',
            style: TextStyle(color: color),
          ),
          subtitle: Text('${color.value}'),
          activeColor: color,
          value: index,
          groupValue: selectedColor,
          onChanged: (value) {
            ref.read(themeNotifierProvider.notifier).changeColorIndex(value!);
            //ref.watch(themeNotifierProvider.notifier).changeColorIndex(index!);
          },
        );
      },
    );
  }
}
