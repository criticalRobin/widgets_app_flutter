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
      icon: Icons.refresh_rounded),
  MenuItem(
      title: "Snackbars y Diálogos",
      subTitle: "Snacks y Diálogos",
      link: "/snack",
      icon: Icons.remove_red_eye_outlined),
  MenuItem(
      title: "Contenedores Animados",
      subTitle: "Contenedores",
      link: "/container",
      icon: Icons.square_sharp),
  MenuItem(
      title: "UI Cotrols + Tiles",
      subTitle: "Controles y Tiles",
      link: "/controls",
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: "Tutorial de la App",
      subTitle: "Tutorial",
      link: "/tutorial",
      icon: Icons.school_outlined),
];
