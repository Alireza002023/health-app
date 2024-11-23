import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:health_app/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      title: "health App",
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff5a73d8),
        useMaterial3: true,
        textTheme: GoogleFonts.plusJakartaSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const HomePage(),
    );
  }
}
