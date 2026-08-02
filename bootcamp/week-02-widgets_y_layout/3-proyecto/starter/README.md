# Vivero de Plantas — Pantalla de Lista del Dominio

Proyecto Semana 02 del bootcamp Flutter Zero to Hero — dominio asignado: **Vivero de plantas**.

## Descripción de la implementación

Esta app muestra el catálogo de plantas del vivero en una pantalla con buscador,
integrando los patrones de layout y listas vistos en la semana 2 (Ejercicios 01, 02 y 03).

### Modelo `Item`

Extendido con 3 propiedades propias del dominio (además de `id`, `name`, `description`):

- `category` — categoría de la planta (ej. "Suculenta", "Árbol de interior")
- `supplier` — proveedor que abastece la planta
- `price` — precio de venta al público

### Datos de ejemplo

`sampleItems` contiene 4 plantas reales del catálogo (mismas usadas en el proyecto de la
semana 1): Suculenta Echeveria, Ficus Lyrata, Rosal Rojo y Orégano — cada una con su
categoría, proveedor y precio.

### Pantalla principal (`HomeScreen`)

- `TextField` con buscador que filtra la lista en tiempo real por nombre de planta
  (case-insensitive)
- `ListView.builder` + `ItemCard` para renderizar el catálogo filtrado sin overflow
- Manejo del caso de lista vacía: muestra el mensaje "No se encontraron plantas" cuando
  la búsqueda no tiene coincidencias
- `AppBar` con el título "Vivero de Plantas"

## Cómo ejecutar

```bash
flutter pub get
flutter run
```

## Validación

```bash
flutter analyze   # sin errores
flutter test      # todos los tests pasan
```