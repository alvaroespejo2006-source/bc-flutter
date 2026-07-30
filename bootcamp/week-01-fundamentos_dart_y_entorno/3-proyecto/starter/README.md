# Semana 01 — Modelador de Dominio en Consola

**Aprendiz:** Álvaro Enrique Espejo Barreto
**Ficha:** 3228970
**Dominio asignado:** 🌱 Vivero de plantas

## Descripción del dominio

La entidad principal (`Item`) representa una **planta** del catálogo de
un vivero. Cada planta tiene, además de `id`, `name` y `createdAt`:

- `category`: categoría de la planta (ej. `Suculenta`, `Árbol de interior`)
- `supplier`: proveedor que abastece la planta
- `price`: precio de venta al público

Este modelo es una simplificación del dominio completo de un vivero de
plantas (plants, categories, sales, suppliers), enfocada en lo que pide
el proyecto de semana 1: una entidad con datos propios del dominio, un
repositorio con carga asíncrona simulada, y búsqueda por id con null
safety.

## Cómo ejecutar

```bash
dart pub get
dart run lib/main.dart
```

## Validar con Docker

```bash
docker compose run --rm flutter dart pub get
docker compose run --rm flutter dart analyze
docker compose run --rm flutter dart test
```

## Entregables cubiertos

- [x] `Item` extendido con 3 propiedades del dominio (`category`, `supplier`, `price`)
- [x] `fetchItems()` con 4 plantas de ejemplo del dominio
- [x] `findById()` implementado con null safety (retorna `null`, no excepción)
- [x] `main.dart` completo: carga, maneja lista vacía, imprime, prueba `findById` en ambos casos
- [x] `dart analyze` sin errores / `dart test` pasando
