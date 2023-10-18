# REUP

Marketplace of local brands

### Requirements

Flutter version >= 3.0.0

## Workflow in a repository

### Branching in a repository

For each task, a branch is created according to the pattern specified below.
If you want to make changes to the code base outside the task, or if you don't want the change
to be executed as a task, then a branch is created according to the pattern:

- branch without task: `no-task <type>([context]): <description>`
- task branch: `<task_name_and_number>_<description>`

### Commits

The [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) is used to create commits.

A pattern for a commit: `<type>(<task_name_and_number>): <description>`, for example:

- `feat(QWE-1): init_project`
- `fix(XYZ-2): fix_error_state`
- `docs(ABC-3): update CHANGELOG.md`

It is better if the commits will be atomic, then it will be easier to navigate in the history of changes and in the design of PR, the text of the last commit will be automatically substituted in the name of the PR.

### Merge requests (Pull Requests)

For description text, there is a basic template that will be automatically added to the PR description text field.
The template is an mandatory part of the description.
During the creation of a PR, it is highly recommended to describe interesting and complex details, point out bottlenecks if possible, and help the reviewers understand the changes as much as possible.

If PR rules the bug, then in the changes you must additionally describe 2 points. The first is **Root cause**. It is necessary to describe the causes of the bug. The second one is **Solution** here you should describe the algorithm of solving this bug.

`fix(ZXC-4): Buttons are not blocked when loading`

```
Root cause: No UI reaction to load time
Soution: Wrap the screen widget tree in the AbsorbPointer widget. And change the state of this widget based on the loading state.
```

If the work in the current PR is not finished yet, i.e. it does not require an early review, mark it with the flag - **WIP**(Work In Progress) or **Draft**, and remove this flag when the work is finished.

A pattern for a Pull request: `<type>(JIRA-<task_number>): <description>`, for example:

- `feat(QWE-1): init`
- `fix(ASD-2): incorrect text for SocketException`
- `docs(ZXC-2): readme update`

### FVM

If you have multiple versions of Flutter installed, you can use [FVM](https://fvm.app/).<br>
You can find installation instructions [here](https://fvm.app/docs/getting_started/installation). <br>
To switch to the desired Flutter version run:

```sh
fvm use <desired_version> # e.g. fvm use 3.10.6
```

Now you need to configure FVM for your IDE:

#### Configuration for VSCode

Follow the [configuration guide](https://fvm.app/docs/getting_started/configuration/#vs-code)
or
Run the [`fvm_vscode.sh` script](scripts/fvm_vscode.sh):

```sh
sh scripts/fvm_vscode.sh
```

#### Configuration for AndroidStudio/IDEA

The configuration guide can be found [here](https://fvm.app/docs/getting_started/configuration/#android-studio).

### Structure

- assets
  - fonts
  - icons
  - images
- lib
  - assets
    - colors
    - res
    - text
    - themes
  - config
  - features
    - {name/common}
      - bloc
      - domain
        - entity
        - repository
        - mappers
      - view
        - {screen_name}
      - widgets
  - l10n
  - persistence
  - utils
- scripts
- test

#### assets

Contains the necessary assets (images, fonts, icons).

#### lib - has the code of the project and consists of the following folders:

- assets - string representation of the necessary assets, themes, colors, and strings.
- config - project configuration, e.g., environment.
- features - features used and implemented in the project. It’s the default location of all folders created for particular features, where each folder contains all of the files relevant to this or that feature. The “common” folder contains entities shared between several features or crucial for the entire app. Try to avoid adding files there unless absolutely necessary. The structure of features:

  - bloc - business logic.
  - domain - contains:
    - entity - business data models.
    - repository - repositories relevant to the feature.
    - mappers - data-to-model (and vice versa) mappers.
  - view - screens relevant to the feature.
  - widgets - widgets relevant to the feature.

- l10n - localizations.
- persistence - persistent storage.
- utils - necessary utilities.

### Navigation

Navigation is centered around the [AutoRoute](https://pub.dev/packages/auto_route) package. We use a class called AppRouter for global navigation around an app and StackRouter for nested navigation.

### Localization

The basic rules and tips for working with localization are described in [README.md](./lib/l10n/README.md).
More information on working with localization can be found here `[here](https://docs.flutter.dev/accessibility-and-localization/internationalization).

### Assets codegen

You can easily add assets to your project by following these steps:

1. Add asset to your assets folder (make sure you specify this folder in `asset` section of your [pubspec.yaml](pubspec.yaml))
2. Run:
   ```sh
   spider build
   ```

The project has two groups of assets - [Images](lib/assets/res/images.dart) and [Svg Icons](lib/assets/res/svg_icons.dart). You can change it in spider [configuration file](spider.yaml).

### Theming

There are three layers of theme we use in our projects:

#### Raw resources

By raw resources we mean raw colors, fonts or assets. For example:

```dart
abstract class ColorPalette {
    static const egyptianBlue = Color(0xFF1245AA);
    static const venetianRed = Color(0xFFCC1512);
    // etc...
}
```

❗❗❗ You **should not** use these colors directly in your application. Use it in `ThemeData` or `ThemeExtension` instead.

#### ThemeData

This class defines app theme. With this class you can define colors, fonts, text styles, etc for material widgets.
For example:

```dart
ThemeData(
    primaryColor: ColorPalette.egyptianBlue,
    accentColor: ColorPalette.venetianRed,
    textTheme: TextTheme(
        displayLarge: TextStyle(
            color: ColorPalette.egyptianBlue,
            fontSize: 24,
            fontWeight: FontWeight.bold,
        ),
        // etc...
    ),
)
```

[Read more](https://api.flutter.dev/flutter/material/ThemeData-class.html).

#### ThemeExtension

Meanwhile `ThemeData` defines theme only for material widgets, `ThemeExtension` allows you to define theme with custom fields for your custom widgets.

```dart
@immutable
class AppColorScheme extends ThemeExtension<AppColorScheme> {
    final Color primary;
    final Color onPrimary;
    final Color dangerBg;
    final Color dangerFg;
    // etc...

    AppColorScheme.light()
      : primary = LightColorPalette.someColor,
      : onPrimary = LightColorPalette.otherColor,
      : dangerBg = LightColorPalette.someRed,
      : dangerFg = LightColorPalette.white,
      // etc.

    AppColorScheme.dark()
    : primary = DarkColorPalette.someColor,
    : onPrimary = DarkColorPalette.otherColor,
    : dangerBg = DarkColorPalette.someRed,
    : dangerFg = DarkColorPalette.white,
    // etc.


    const AppColorScheme._({
        required this.primary,
        required this.onPrimary,
        required this.dangerBg,
        required this.dangerFg,
    });

    @override
    ThemeExtension<AppColorScheme> copyWith({
        Color? primary
        Color? onPrimary
        Color? dangerBg
        Color? dangerFg
    }) {
        return AppColorScheme(
            primary: primary ?? this.primary,
            onPrimary: onPrimary ?? this.onPrimary,
            dangerBg: dangerBg ?? this.dangerBg,
            dangerFg: dangerFg ?? this.dangerFg,
        );
    }


  /// Method for smooth transition between two themes.
  @override
  ThemeExtension<AppColorScheme> lerp(
    ThemeExtension<AppColorScheme>? other,
    double t,
  ) {
    if (other is! AppColorScheme) {
      return this;
    }

    return AppColorScheme._(
      primary: Color.lerp(primary, other.primary, t),
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t),
      dangerBg: Color.lerp(dangerBg, other.dangerBg, t),
      dangerFg: Color.lerp(dangerFg, other.dangerFg, t),
    );
  }


  /// Returns [AppColorScheme] from [context].
  static AppColorScheme of(BuildContext context) =>
      Theme.of(context).extension<AppColorScheme>()!;
}
```

> It is important that `ThemeExtension` is in sync with `ThemeData` - thanks to this, a smooth theme update for custom extensions is possible.

Read more [here](https://api.flutter.dev/flutter/material/ThemeExtension-class.html).

#### Recommended practices

You can define whatever `ThemeExtension` you want or use only `ThemeData`, but you also can use our semantic [`ColorScheme`](lib/assets/colors/color_scheme.dart).

This scheme inspired by Material Design and contains colors for primary, secondary, error, background, surface, onPrimary, onSecondary, onBackground, onSurface, onError, etc.

You don't have use only this set of fields - you can add your own, delete unnecessary, etc.

Example of use:

```dart
class SomeCustomWidget extends StatelessWidget {
  const SomeCustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scheme = AppColorScheme.of(context);
    return Container(
      color: scheme.surface,
      /// etc...
    );
  }
}
```
