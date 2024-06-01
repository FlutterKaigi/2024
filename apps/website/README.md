# Conference Website 2024

FlutterKaigi 2024 official website.

## Getting Started

1. Setup your Flutter environment: Refer to root README.md for instructions.
TODO: Add instructions for setting up Flutter environment. (FVM, Melos, etc.)

### Internationalization (i18n)

This project uses the [`slang`](https://pub.dev/packages/slang) package for internationalization.

#### Adding a new language

1. Add a new string file in `lib/i18n/` with the language code as the filename (e.g. `en.i18n.json`).
1. Edit the new string file with the translations.
see `strings.i18n.json` for reference.

1. Run `fvm flutter pub run build_runner build` to generate the new string file.

### Running the website

#### VSCode (Recommended)

1. Open the project in VSCode.
1. Run the `website-debug` launch configuration.

#### Terminal

1. Run `fvm flutter run -d chrome` to run the website in Chrome.

- `fvm flutter run -d web-server` to run the website in a local server.
