import 'package:flutter/material.dart';

import '../data/sample_items.dart';
import '../widgets/item_card.dart';

// ============================================
// SCREEN: HomeScreen
// Lista de elementos de tu dominio, con buscador.
// Reutiliza los patrones de los ejercicios 02 (layout) y 03 (lista + input).
// ============================================
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _searchController = TextEditingController();
  String _query = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final filteredItems = sampleItems
        .where((item) => item.name.toLowerCase().contains(_query.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Vivero de Plantas')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                labelText: 'Buscar planta',
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) => setState(() => _query = value),
            ),
          ),
          Expanded(
            child: filteredItems.isEmpty
                ? const Center(child: Text('No se encontraron plantas'))
                : ListView.builder(
                    itemCount: filteredItems.length,
                    itemBuilder: (context, index) {
                      return ItemCard(item: filteredItems[index]);
                    },
                  ),
          ),
        ],
      ),
    );
  }
}