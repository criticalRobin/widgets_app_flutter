import 'package:flutter/material.dart' show Icons, IconData;

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const List<MenuItem> appMenuItems = [
  MenuItem(
      title: "Botones",
      subTitle: "Varios tipos de botones",
      link: "/buttons",
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: "Tarjetas",
      subTitle: "Varios tipos de tarjetas",
      link: "/cards",
      icon: Icons.credit_card_outlined),
  MenuItem(
      title: "Indicadores de Progreso",
      subTitle: "Generales y Controlados",
      link: "/progress",
      icon: Icons.refresh_rounded)
];
