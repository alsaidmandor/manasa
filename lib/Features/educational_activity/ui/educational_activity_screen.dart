import 'package:flutter/material.dart';

class EducationalActivityScreen extends StatelessWidget {
  const EducationalActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Educational Activity'),
      ),
      body: Center(
        child: Text('EducationalActivityScreen Screen'),
      ),

    );
  }
}
