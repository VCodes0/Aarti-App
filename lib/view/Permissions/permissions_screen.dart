import 'package:flutter/material.dart';
import 'package:god_aarti_app/widgets/permission_widget.dart';

class PermissionsScreen extends StatelessWidget {
  const PermissionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF5F1),
      body: SafeArea(child: PermissionsWidget()),
    );
  }
}
