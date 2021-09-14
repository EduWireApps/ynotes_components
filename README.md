**This package is under heavy development. Its documentation might be irrelevant for the following**
- Components
- Config
- Settings

# ynotes-packages

> Sorry French users, this repo is only in english.

This repo contains 1 package splitted in 5 libraries:

## Libraries

### [Components](lib/src/components) `Oudated`

Contains useful components such as `YButton`. It relies on [theme](#theme) and [utilities](#utilities) libraries. Check out the [README](lib/src/components/README.md).

Inspired by [Supabase Ui](https://ui.supabase.io) and [Signal](https://signal.org) interfaces.

Import it:

```dart
import 'package:ynotes_packages/components.dart';
```

### [Config](lib/src/config)

Provides tools to setup themes that must be stored in the app. (instructions in the README). Check out the [README](lib/src/config/README.md).

Import it:

```dart
import 'package:ynotes_packages/config.dart';
```

### [Theme](lib/src/theme)

Provides tools to setup themes that must be stored in the app. (instructions in the README). Check out the [README](lib/src/theme/README.md).

Import it:

```dart
import 'package:ynotes_packages/theme.dart';
```

### [Utilities](lib/src/utilities) `Oudated`

Contains utilities such as `YFontSize`, inspired by [Tailwind CSS](https://tailwindcss.com) approach. Check out the [README](lib/src/utilities/README.md)

Import it:

```dart
import 'package:ynotes_packages/utilities.dart';
```

### Settings `Soon`

TBD

## Packages used

Under the hood, this packages uses:

- [flutter](https://flutter.dev)
- [flutter_switch](https://pub.dev/packages/flutter_switch)
- [flutter_responsive_breakpoints](https://pub.dev/packages/flutter_responsive_breakpoints)

---

Maintained by [Florian LEFEBVRE](https://github.com/florian-lefebvre).
