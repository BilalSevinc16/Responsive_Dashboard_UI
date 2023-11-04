import 'package:flutter/material.dart';
import 'package:responsive_dashboard_ui/responsive/desktop_body.dart';
import 'package:responsive_dashboard_ui/responsive/mobile_body.dart';
import 'package:responsive_dashboard_ui/responsive/tablet_body.dart';

import 'responsive/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const ResponsiveLayout(
        mobileBody: MobileScaffold(),
        tabletBody: TabletScaffold(),
        desktopBody: DesktopScaffold(),
      ),
    );
  }
}
