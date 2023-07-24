import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones en flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Varios botones en flutter',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Progress Indicator',
    subTitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'Snackbars y dialogos',
    subTitle: 'Indicadores en pantallasnackbars',
    link: '/snackbars',
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: 'Animated Container',
    subTitle: 'Statefil Widget Animated',
    link: '/animated',
    icon: Icons.check_box_outline_blank_rounded,
  ),
  MenuItem(
    title: 'Ui controls + Tiles',
    subTitle: 'Una serie de controles de flutter',
    link: '/ui-crontrols',
    icon: Icons.card_travel_outlined,
  ),
  MenuItem(
    title: 'Introducción a la aplicación',
    subTitle: 'Pequeño tutorial introtuctorio',
    link: '/tutorial',
    icon: Icons.accessible_rounded,
  ),
  MenuItem(
    title: 'Infinite Scroll y Pull',
    subTitle: 'Listas infinitas y pull to refresh',
    link: '/infinite',
    icon: Icons.list_alt_rounded,
  ),
  MenuItem(
    title: 'Contador de números',
    subTitle: 'Screen de contando numeros',
    link: '/counter_screen',
    icon: Icons.add,
  ),
  MenuItem(
    title: 'Cambiar Tema',
    subTitle: 'Cambiar tema de la aplicación',
    link: '/theme_changer',
    icon: Icons.color_lens_outlined,
  ),
];
