import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:provider/provider.dart';
import 'states/auth_state.dart';
import 'ui/app_scaffold.dart';
import 'ui/login_part.dart';

void main() {
  runApp(
    ChangeNotifierProvider<AuthState>(
      create: (context) => AuthState(),
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Poll',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      supportedLocales: const [Locale('fr')],
      locale: const Locale('fr'),
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      initialRoute: '/polls',
      routes: {
        '/polls': (context) => const AppScaffold(
              title: 'Événements',
              body: Placeholder(child: Center(child: Text('POLLS'))),
            ),
        '/polls/create': (context) => const AppScaffold(
              title: 'Ajouter un événement',
              body: Placeholder(child: Center(child: Text('POLLS_CREATE'))),
            ),
        '/polls/detail': (context) => AppScaffold(
              title: 'Événement',
              body: Placeholder(child: Center(child: Text('POLLS_DETAIL'))),
            ),
        '/polls/update': (context) => AppScaffold(
              title: 'Modifier un événement',
              body: Placeholder(child: Center(child: Text('POLLS_UPDATE'))),
            ),
        '/login': (context) => const AppScaffold(
              title: 'Connexion',
              body: LoginPage(),
            ),
        '/signup': (context) => const AppScaffold(
              title: 'Inscription',
              body: Placeholder(child: Center(child: Text('SIGNUP'))),
            ),
      },
    );
  }
}
