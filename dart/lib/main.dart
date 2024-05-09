import 'package:chuva_dart/providers/activity_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const ChuvaDart());
}

class ChuvaDart extends StatelessWidget {
  const ChuvaDart({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (ctx, st) => const Scaffold(
            body: Placeholder(),
          ),
        ),
      ],
    );

    return ChangeNotifierProvider(
      create: (ctx) {
        final activityProvider = ActivityProvider();
        activityProvider.fetchAllActivities();

        return activityProvider;
      },
      child: MaterialApp.router(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: router,
      ),
    );
  }
}
