import '../models/item.dart';

// ============================================
// DATA: sampleItems
// Datos de ejemplo en memoria — todavía no consumimos una API real
// (eso llega en semana 6 con Dio). Por ahora es una lista estática.
// ============================================
//
// --- Implementación del aprendiz (Álvaro Enrique Espejo Barreto) ---
// Dominio: Vivero de plantas. Mismos datos usados en el proyecto de la
// semana 1 (ItemRepository), adaptados a este modelo Item.
const List<Item> sampleItems = [
  Item(
    id: 'plant_001',
    name: 'Suculenta Echeveria',
    description: 'Planta ornamental de bajo mantenimiento, ideal para interiores',
    category: 'Suculenta',
    supplier: 'Vivero El Rosal',
    price: 12000,
  ),
  Item(
    id: 'plant_002',
    name: 'Ficus Lyrata',
    description: 'Árbol de interior de hojas grandes, requiere luz indirecta abundante',
    category: 'Árbol de interior',
    supplier: 'Plantas Verdes S.A.S.',
    price: 85000,
  ),
  Item(
    id: 'plant_003',
    name: 'Rosal Rojo',
    description: 'Arbusto ornamental de flor, ideal para jardines exteriores',
    category: 'Arbusto ornamental',
    supplier: 'Vivero El Rosal',
    price: 25000,
  ),
  Item(
    id: 'plant_004',
    name: 'Orégano',
    description: 'Hierba aromática de uso culinario, fácil cultivo en maceta',
    category: 'Hierba aromática',
    supplier: 'Agroinsumos del Valle',
    price: 8000,
  ),
];