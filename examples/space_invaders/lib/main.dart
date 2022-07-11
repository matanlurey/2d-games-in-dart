import 'package:flutter/material.dart';

void main() {
  // Required in order to load assets before invoking "runApp" below.
  WidgetsFlutterBinding.ensureInitialized();

  // TODO: Load sprites.

  // Runs a basic Flutter app as a shell.
  runApp(
    MaterialApp(
      title: 'Space Invaders',
      initialRoute: '/new',
      routes: {
        '/new': (_) => const _NewGameScreen(),
        '/play': (_) => const _PlayGameScreen(),
      },
    ),
  );
}

class _NewGameScreen extends StatelessWidget {
  const _NewGameScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Space Invaders'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => const _PlayGameScreen(),
                transitionDuration: Duration.zero,
                reverseTransitionDuration: Duration.zero,
              ),
            );
          },
          child: const Text('New Game'),
        ),
      ),
    );
  }
}

class _PlayGameScreen extends StatelessWidget {
  const _PlayGameScreen();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
