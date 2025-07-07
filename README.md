# Mesero 2.0 - Flutter Edition

Una aplicación Flutter migrada desde React + TypeScript + Vite.

## Características

- **Flutter 3.32.5** con Dart 3.8.1
- **Material Design 3** con tema personalizado
- **Hot Reload** para desarrollo rápido
- **Multiplataforma** (iOS, Android, Web)
- **Contador interactivo** similar a la versión React original

## Estructura del Proyecto

```
lib/
├── main.dart          # Punto de entrada principal
assets/
├── images/           # Imágenes y recursos
```

## Instalación y Configuración

### Prerrequisitos

- Flutter 3.32.5 o superior
- Dart 3.8.1 o superior
- Android Studio / VS Code con extensiones de Flutter

### Instalación

```bash
# Clonar el repositorio
git clone <tu-repositorio>

# Navegar al directorio del proyecto
cd mesero_2punto0

# Instalar dependencias
flutter pub get

# Ejecutar la aplicación
flutter run
```

## Comandos Disponibles

```bash
# Ejecutar en modo desarrollo
flutter run

# Ejecutar en modo debug para web
flutter run -d chrome

# Construir para producción
flutter build apk        # Android
flutter build ios        # iOS
flutter build web        # Web

# Ejecutar tests
flutter test

# Analizar el código
flutter analyze
```

## Migración desde React

### Equivalencias principales:

| React/TypeScript | Flutter/Dart |
|------------------|--------------|
| `useState` | `setState()` |
| `function Component()` | `StatelessWidget` |
| `function Component() + state` | `StatefulWidget` |
| `JSX` | `Widget tree` |
| `CSS` | `ThemeData` + inline styles |
| `npm install` | `flutter pub get` |
| `npm run dev` | `flutter run` |

### Características migradas:

✅ **Contador interactivo**
- Función de incremento
- Estado persistente durante hot reload
- Estilo similar al original

✅ **Tema oscuro**
- Colores personalizados (#242424, #1a1a1a)
- Estilo moderno similar a Vite

✅ **Diseño responsivo**
- Layouts adaptativos
- Iconos vectoriales
- Tipografía escalable

## Desarrollo

### Hot Reload

Flutter incluye hot reload nativo:
- Guarda el archivo para ver cambios instantáneos
- El estado se mantiene entre recargas
- Ideal para desarrollo rápido

### Estructura de Widgets

```dart
// Widget sin estado (equivalente a componente funcional)
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// Widget con estado (equivalente a componente con hooks)
class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```

## Próximos Pasos

- [ ] Agregar navegación entre pantallas
- [ ] Implementar estado global (Provider/Riverpod)
- [ ] Agregar animaciones
- [ ] Conectar con API REST
- [ ] Implementar base de datos local (SQLite)
- [ ] Agregar notificaciones push
- [ ] Implementar autenticación

## Recursos Útiles

- [Documentación oficial de Flutter](https://docs.flutter.dev/)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)
- [Material Design 3](https://m3.material.io/)
- [Flutter Widget Catalog](https://docs.flutter.dev/ui/widgets)

## Contribución

1. Fork el proyecto
2. Crea tu feature branch (`git checkout -b feature/nueva-funcionalidad`)
3. Commit tus cambios (`git commit -m 'Agregar nueva funcionalidad'`)
4. Push a la branch (`git push origin feature/nueva-funcionalidad`)
5. Abre un Pull Request

## Licencia

Este proyecto está bajo la licencia MIT. Ver el archivo `LICENSE` para más detalles.
