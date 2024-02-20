import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = "ui_screen";

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UI Controls"),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, bus, train, plane }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloperMode = true;
  Transportation selectedTransportation = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SwitchListTile(
            title: const Text("Modo de Desarrollador"),
            subtitle: const Text("Activar el modo de desarrollador"),
            value: isDeveloperMode,
            onChanged: (value) {
              setState(() => isDeveloperMode = !isDeveloperMode);
            }),
        RadioListTile(
            title: const Text("Carro"),
            subtitle: const Text("Transporte personal"),
            value: Transportation.car,
            groupValue: selectedTransportation,
            onChanged: (value) => setState(() {
                  selectedTransportation = Transportation.car;
                })),
        RadioListTile(
            title: const Text("Bus"),
            subtitle: const Text("Transporte público"),
            value: Transportation.bus,
            groupValue: selectedTransportation,
            onChanged: (value) => setState(() {
                  selectedTransportation = Transportation.bus;
                })),
        RadioListTile(
            title: const Text("Tren"),
            subtitle: const Text("Transporte a vapor"),
            value: Transportation.train,
            groupValue: selectedTransportation,
            onChanged: (value) => setState(() {
                  selectedTransportation = Transportation.train;
                })),
        RadioListTile(
            title: const Text("Avión"),
            subtitle: const Text("Transporte aéreo"),
            value: Transportation.plane,
            groupValue: selectedTransportation,
            onChanged: (value) => setState(() {
                  selectedTransportation = Transportation.plane;
                })),
      ],
    );
  }
}
