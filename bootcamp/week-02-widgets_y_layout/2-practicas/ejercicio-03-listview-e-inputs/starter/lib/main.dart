/// Ejercicio 03 — ListView, TextField y Filtrado
/// Qué: practicar ListView.builder, TextField y filtrado con setState.
/// Para qué: es la mecánica exacta del proyecto de esta semana, aplicada
/// aquí a datos de ejemplo antes de aplicarla a tu dominio.
library;

import 'package:flutter/material.dart';

void main() {
  debugPrint('--- Ejercicio 03: ListView, TextField y Filtrado ---');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejercicio 03',
      theme: ThemeData(colorSchemeSeed: const Color(0xFF0175C2), useMaterial3: true),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _searchController = TextEditingController();
  String _query = '';

  final _allItems = const [
    'Elemento Alfa',
    'Elemento Beta',
    'Elemento Gamma',
    'Elemento Delta',
    'Elemento Épsilon',
    'Elemento Zeta',
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final filtered = _allItems
        .where((item) => item.toLowerCase().contains(_query.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Ejercicio 03')),
      body: Column(
        children: [
          TextField(
            controller: _searchController,
            decoration: const InputDecoration(labelText: 'Buscar', prefixIcon: Icon(Icons.search)),
            onChanged: (value) => setState(() => _query = value),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filtered.length,
              itemBuilder: (context, index) {
                final item = filtered[index];
                return ListTile(title: Text(item));
              },
            ),
          ),
        ],
      ),
    );
  }
}