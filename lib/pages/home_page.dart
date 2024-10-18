import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: constant_identifier_names
    const Name = ('codepur');
    // ignore: constant_identifier_names
    const Days = 30;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text('Catalog_app')),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: const Text('Welcome $Name in $Days days of Flutter'),
        ),
      ),
      drawer: const Mydrawer(),
      
    );
  }
}
