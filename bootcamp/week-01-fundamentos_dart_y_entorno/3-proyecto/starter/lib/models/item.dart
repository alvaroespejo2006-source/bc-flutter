import '../mixins/identifiable.dart';
import '../mixins/timestamped.dart';

// ============================================
// MODEL: Item
// Entidad genérica que representa un elemento de tu dominio asignado.
// ============================================
//
// NOTA PARA EL APRENDIZ:
// Adapta esta clase a tu dominio asignado. Ejemplos:
// - Biblioteca: Book (title, author, isbn, available)
// - Farmacia: Medication (name, price, stock, category)
// - Gimnasio: Member (name, plan, startDate, active)
//
// Este archivo ya trae `id`, `name` y `createdAt` porque son comunes a
// cualquier dominio. Agrega los campos específicos de tu dominio.

class Item with Identifiable, Timestamped {
  @override
  final String id;
  final String name;
  @override
  final DateTime createdAt;

  // TODO: Agrega aquí las propiedades específicas de tu dominio.
  // Ejemplo (Biblioteca): final String author; final String isbn;
  // Ejemplo (Farmacia): final double price; final int stock;
  //
  // --- Implementación del aprendiz (Álvaro Enrique Espejo Barreto) ---
  // Dominio asignado: Vivero de plantas.
  // `Item` representa una planta (plant) del catálogo del vivero.
  final String category; // categoría de la planta, ej. "Suculenta", "Árbol frutal"
  final String supplier; // proveedor que abastece la planta
  final double price; // precio de venta al público

  const Item({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.category,
    required this.supplier,
    required this.price,
  });

  @override
  String toString() =>
      '#$shortId $name ($category) — Proveedor: $supplier | \$${price.toStringAsFixed(0)}';
}
