import 'package:flutter/material.dart';
import 'package:uii_act1_0490/pantalla0490/panel0490/panel_pantalla0490.dart';

void main() => runApp(MiAppGorras());

class MiAppGorras extends StatelessWidget {
  const MiAppGorras({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Guitar music Shop gonzalez 0490",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
          useMaterial3: true),
      home: PanelPantalla0490(),
    );
  }
}
