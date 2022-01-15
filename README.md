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

- .dart_tool - store dart tool like packages that be used in the project
- .idea
- android - store code in android version after building app
- ios - store code in ios version after building app
- web - store code in web version after building app
- build - store build file when running app or prepare for production
- lib - store .dart file and it was declared to be a starter point of Flutter app
- test - testing app
- .gitignore - version control ignore file
- .metadata - tracks properties of the Flutter project (should not be manually edit)
- analysis.options.yaml - code linter & analysis
- pubspec.lock - lock version of the dependencies
- pubspec.yaml - config, custom font, using libraries
- `<project_name>`.iml

## Hot Reload

In order to enable hot reload during development, you need to use stateless widgets. It helps re-rendering that widget without hot restart but just click save.

- Creating new stateless widgets class with `Flutter stateless widget` snippet. The class that was created, is your custom widget class.
- Stateless widgets - the state of the widget cannot change over time like static data, background color, text.
- Stateful widgets - the state of the widget can change over time like increasing number when clicking the button
- `@override` - override build function that extends from StatelessWidget

```dart
class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text(
        'Sweet Order App',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'Kanit',
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
  );
}
```

## Images & Assets

1. NetworkImage - import image via URL

```dart
 body: const Center(
  child: Image(
    image: NetworkImage('https://images.unsplash.com/photo-1622028715355-ec58f12a7f9c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=433&q=80'),
    ),
),

// or
body: Center(
  child: Image.network('assets/images/sweet_2.jpg'),
),

```

2. AssetImage - import image from your custom folder

```yaml
# Add path in pubspec.yaml
assets:
  - assets/images/
```

```dart
body: const Center(
  child: Image(
    image: AssetImage('assets/images/sweet_1.jpg'),
    ),
),

// or
body: Center(
  child: Image.asset('assets/images/sweet_2.jpg'),
),
```

## Button

- Elevated Button - elevate when clicking the button
- Text Button - on animation

```
child: ElevatedButton(
  child: const Text(
    'Order',
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontFamily: 'Kanit',
      color: Colors.white
    ),
  ),
  onPressed: () {},
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.pink),
  ),
)
```

## Container

Use to wrap the widget and enable styling padding and other properties.

```dart
child: Container(
  color: Colors.pink[300],
  child: const Text('order sweet'),
  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
),
```

- `EdgeInserts.all(20)` - set space of all directions.
- `EdgeInserts.symmetric(horizontal: 30, vertical: 20)` - set space of horizontal and vertical direction
- `EdgeInserts.fromLTRB(20, 30, 40, 20)` - set left space, top space, right space and bottom space, respectively.

## Row & Column

Row and Column enable putting multiple widgets and aligning the widgets inside.

- Row - main axis is horizontal direction
- Column - main axis is vertical direction

```dart
body: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
    const Text('Sweet1'),
    const Text('Sweet2'),
    TextButton(onPressed: () {}, child: const Text('Order')),
    Container(
      color: Colors.pink[300],
      padding: const EdgeInsets.all(20),
      child: const Text('Container'),
    )
  ],
)
```

## Flutter outline

After install Flutter extension in VSCode, you could set VSCode to display outline in every widgets.
The outline make your development easier.

- Go to Setting in VSCode and check Preview Flutter UI Guides & Preview Flutter UI Guides Custom Tracking
- Right click and choose refactor to use Flutter extension command like move widget up & down

## Expanded widget

Expanded widget is similar to flex box in CSS.

```dart
body: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
    Expanded(
      flex: 2,
      child: Container(
        color: Colors.blue[300],
        padding: const EdgeInsets.all(20),
        child: const Text('Container1'),
      ),
    ),
    Expanded(
      flex: 2,
      child: Container(
        color: Colors.pink[300],
        padding: const EdgeInsets.all(20),
        child: const Text('Container2'),
      ),
    ),
    Expanded(
      flex: 3,
      child: Container(
        color: Colors.orange[300],
        padding: const EdgeInsets.all(20),
        child: const Text('Container3'),
      ),
    )
  ],
));
```

## Lists of Data

Display all elements in the list with map function.

```dart
// map multi-line code
children: users.map((user) {
  return Text(user);
}).toList()
```

```dart
// map single-line code (use arrow function)
children: users.map((user) => Text(user)).toList()
```

```dart
class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List<String> users = ['User1', 'User2', 'User3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Sweet Order App',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Kanit',
                color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.pink[300],
        ),
        body: Column(
          children: users.map((user) {
            return Text(user);
          }).toList(),
        ));
  }
}
```

## Custom Classes

When you need to work with multiple data, it is good to create their own data class.

```dart
// user.dart
class User {
  String name;
  String email;

  User({required this.name, required this.email});
}
```

```dart
// main.dart
class _UserListState extends State<UserList> {
  List<User> users = [
    User(name: 'Leanne Graham', email: 'Sincere@gmail.com'),
    User(name: 'Ervin Howell', email: 'Shanna@hotmail.com'),
    User(name: 'Vincent Skywalker', email: 'Vincent@hotmail.com'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Sweet Order App',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Kanit',
                color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.pink[300],
        ),
        body: Center(
            child: Column(
          children: users.map((user) {
            return Text('${user.name} - ${user.email}');
          }).toList(),
        )));
  }
```

## Extract Widget

Click refactor at the widget and choose 'extract widget' to automatically extract widget to another class.

## Function as parameters

You can pass the function as parameters to modify value in the parent state.

```dart
class UserCard extends StatelessWidget {
  final User user;
  final Function() delete; // define dynamic function type (function as parameters)
  ...
}
```

## Stateful Widgets Lifecycle

1. initState() - called only once when the widget is created and also subscribe to streams that could change the widget data.
2. build() - builds the widget tree and will be triggered every time you use setState().
3. dispose() - execute when the widget is removed.

```dart
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: <Widget>[
          TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/dessert');
              },
              icon: Icon(Icons.food_bank),
              label: Text('Dessert')),
        ]),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}

```

## Asynchronous Code

Flutter has Future function like setTimeout in JS.

```dart
  void getData (){
    String username = await Future.delayed(Duration(seconds: 2), () {
      return 'Chitsanupong';
    });

    // work after first Future.delayed is completed
    String email = await Future.delayed(Duration(seconds: 2), () {
      return 'example@hotmail.com';
    });
  }

```
