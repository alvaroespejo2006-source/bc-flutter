import '../models/item.dart';

// ============================================
// SERVICE: ItemRepository
// Simula una fuente de datos asíncrona (como sería una llamada a una API
// real desde semana 6 con Dio). Por ahora usa Future.delayed para simular
// la latencia de red sin depender de ningún servicio externo.
// ============================================
class ItemRepository {
  /// Obtiene la lista de elementos del dominio.
  ///
  /// TODO: Reemplaza los datos de ejemplo por elementos de TU dominio
  /// asignado. Mantén el `Future.delayed` — simula la latencia real que
  /// tendrás desde semana 6 al consumir una API de verdad.
  Future<List<Item>> fetchItems() {
    return Future.delayed(const Duration(milliseconds: 300), () {
      // TODO: Reemplaza esta lista de ejemplo por elementos de tu dominio.
      //
      // --- Implementación del aprendiz (Álvaro Enrique Espejo Barreto) ---
      // Dominio: Vivero de plantas -> catálogo de plantas (plants).
      return <Item>[
        Item(
          id: 'plant_001',
          name: 'Suculenta Echeveria',
          createdAt: DateTime(2024, 1, 15),
          category: 'Suculenta',
          supplier: 'Vivero El Rosal',
          price: 12000,
        ),
        Item(
          id: 'plant_002',
          name: 'Ficus Lyrata',
          createdAt: DateTime(2024, 2, 20),
          category: 'Árbol de interior',
          supplier: 'Plantas Verdes S.A.S.',
          price: 85000,
        ),
        Item(
          id: 'plant_003',
          name: 'Rosal Rojo',
          createdAt: DateTime(2024, 4, 3),
          category: 'Arbusto ornamental',
          supplier: 'Vivero El Rosal',
          price: 25000,
        ),
        Item(
          id: 'plant_004',
          name: 'Orégano',
          createdAt: DateTime(2024, 5, 30),
          category: 'Hierba aromática',
          supplier: 'Agroinsumos del Valle',
          price: 8000,
        ),
      ];
    });
  }

  /// Busca un elemento por id. Retorna `null` si no existe — practica
  /// null safety consumiendo este método desde `main.dart`.
  ///
  /// TODO: Implementa la búsqueda sobre el resultado de fetchItems().
  Future<Item?> findById(String id) async {
    // TODO: usa fetchItems(), luego busca el elemento con ese id.
    // Pista: List.where + firstOrNull, o un for con early return.
    //
    // --- Implementación del aprendiz (Álvaro Enrique Espejo Barreto) ---
    final items = await fetchItems();
    for (final item in items) {
      if (item.id == id) return item;
    }
    return null;
  }
}
