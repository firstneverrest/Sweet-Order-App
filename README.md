# Sweet Order App

Sweet order app is a cross-platform mobile app with Flutter.

## Flutter

Flutter is a mobile UI framework for creating native apps for both iOS and Android. Flutter use single code-base or Dart language which means that writing only once for multiple devices, no need to separate code. Flutter use Flutter SDK to transform code to iOS and Android.

## Dart

Dart is a programming language developed by Google. It is object-oriented and strongly typed which use to develop mobile app with Flutter. You can visit [DartPad](https://dartpad.dev/?) to write Dart script on online editor.

## Installation for Windows

1. Clone initial project from Flutter repo on GirtHub (easiest way).

```
git clone https://github.com/flutter/flutter.git -b stable

```

2. Check if your system is ready to run Flutter apps.

```
flutter doctor
```

3. Then, flutter will download all dependencies for you.
4. Add flutter into environment path by using `C:\Users\..\flutter\bin` path.
5. Check version to make sure Flutter is completely installed.

```
flutter --version
```

5. Create new project with Android Studio or VSCode.

### Create new project with VSCode

1. Open VSCode and install Flutter extension
2. Run `flutter create <PROJECT_NAME>` to create a project
3. change directory to flutter directory and run `flutter run`

### Create new project with Android Studio

1. Open Android Studio and install Flutter plugin from marketplace
2. Restart IDE, then you could see "New Flutter Project" button in front of "New Project" button
3. Click "New Flutter Project"
4. Fill up Flutter SDK path and other description

## Get Started

Main code is stored in lib/main.dart file, you can start writing app in this file. At the first sight,
you could see high amount of code display in this file. You can delete all of that and start writing code from scratch.

Note: Everything in Flutter is a Widget: like component in React.

```dart
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text(
        'Sweet Order App',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.pink[300],

    ),
    body: const Center(
      child: Text("Let's order some sweet!"),
    ),
    floatingActionButton: FloatingActionButton
      (
      child: const Icon(Icons.add),
      onPressed: () {},
      backgroundColor: Colors.pink[300],
    ),
  ),
));

```

## Folder Structure

- .dart_tool
- .idea
- android
- build - store build file when running app or prepare for production
- ios
- lib - widget, constants, main code
- test - testing app
- web
- .gitignore - version control ignore file
- .metadata
- .packages
- analysis.options.yaml
- pubspec.lock
- pubspec.yaml - app meta data, config, custom font
- `<project_name>`.iml
