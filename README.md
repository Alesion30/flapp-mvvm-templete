

# Flapp MVVM Template

A production-ready Flutter project template structured around the **MVVM** architecture. It comes pre-configured with modern Dart ecosystem tools, state management, type-safe routing, localization, and automated code generation to help you start building apps efficiently.

## ✨ Features
- **MVVM Architecture**: Clean separation of concerns with ViewModel and UI layers.
- **State Management**: [Riverpod](https://riverpod.dev/) with `hooks_riverpod` and `flutter_hooks`.
- **Type-Safe Routing**: [auto_route](https://pub.dev/packages/auto_route) for navigation.
- **Code Generation**: `freezed`, `json_serializable`, and `flutter_gen` for immutable models and typed assets.
- **Responsive UI**: [sizer](https://pub.dev/packages/sizer) for screen adaptation and [device_preview](https://pub.dev/packages/device_preview) for debugging.
- **Localization**: Configured with `flutter_localizations` and `intl` (Japanese template `app_ja.arb`).
- **Developer Experience**: FVM (Flutter 2.5.3), Husky, lint-staged, Prettier, and Renovate bot integration.

## 🛠️ Prerequisites
- [Flutter](https://flutter.dev/docs/get-started/install)
- [FVM](https://fvm.app/) (Flutter Version Manager)
- Node.js & npm (For husky/prettier scripts)

## 📦 Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Alesion30/flapp-mvvm-templete.git
   cd flapp-mvvm-templete
   ```

2. Install & use the required Flutter version via FVM:
   ```bash
   fvm install 2.5.3
   fvm use 2.5.3
   ```

3. Install Flutter dependencies:
   ```bash
   fvm flutter pub get
   ```

4. Install Node.js dependencies (sets up husky pre-commit hooks):
   ```bash
   npm install
   ```

5. Generate code (`freezed`, `auto_route`, `json_serializable`, `flutter_gen`):
   ```bash
   fvm dart run build_runner build --delete-conflicting-outputs
   ```

## 🚀 Usage

The project supports multiple flavors and debug configurations. You can run the app using the CLI or the provided VS Code launch configurations (`.vscode/launch.json`).

**Run Dev Flavor:**
```bash
fvm flutter run --dart-define=FLAVOR=dev
```

**Run Prod Flavor:**
```bash
fvm flutter run --dart-define=FLAVOR=prod
```

**Run with Device Preview:**
```bash
fvm flutter run --dart-define=FLAVOR=dev --dart-define=PREVIEW=true
```

### 🌍 Localization
Localization files are located in `lib/l10n/`. The template is initialized with `app_ja.arb`. To add languages or regenerate localization files, run:
```bash
fvm flutter gen-l10n
```

## 📝 Code Quality & Conventions
- **Dart Linting**: Strict rules configured in `analysis_options.yaml` (extends `flutter_lints`).
- **Auto-Formatting**: `husky` + `lint-staged` automatically runs `fvm flutter format` on `*.dart` files and `prettier --write` on `*.json`/`*.yaml` files before every commit.
- **Dependency Updates**: Managed via `renovate.json` with automatic patch merges.

## 📄 License
This project is licensed under the MIT License.

## 👤 Author
**Yuta Ohira**  
📧 alesion90@gmail.com
