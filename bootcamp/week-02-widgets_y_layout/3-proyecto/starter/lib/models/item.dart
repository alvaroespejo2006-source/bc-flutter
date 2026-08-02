// ============================================
// MODEL: Item
// Entidad genérica que representa un elemento de tu dominio asignado.
// ============================================
//
// NOTA PARA EL APRENDIZ:
// Adapta esta clase a tu dominio asignado (igual que en semana 1). Ejemplos:
// - Biblioteca: Book (title, author, isbn, available)
// - Farmacia: Medication (name, price, stock, category)
// - Gimnasio: Member (name, plan, startDate, active)

class Item {
  final String id;
  final String name;
  final String description;

  // --- Implementación del aprendiz (Álvaro Enrique Espejo Barreto) ---
  // Dominio asignado: Vivero de plantas.
  // `Item` representa una planta del catálogo del vivero.
  final String category; // categoría de la planta, ej. "Suculenta", "Árbol de interior"
  final String supplier; // proveedor que abastece la planta
  final double price; // precio de venta al público

  const Item({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.supplier,
    required this.price,
  });
}