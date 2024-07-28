import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:notes_bonfire/providers/note_provider.dart';
import 'package:notes_bonfire/utils/app_router.dart';
import 'package:provider/provider.dart';

class NotesBonfireApp extends StatelessWidget {
  const NotesBonfireApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NoteProvider(),
      child: DynamicColorBuilder(
        builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
          return MaterialApp.router(
            title: 'Notes Bonfire',
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.system,
            theme: lightDynamic != null
                ? ThemeData.from(
                    colorScheme: ColorScheme.fromSeed(
                      seedColor: lightDynamic.primary,
                      brightness: lightDynamic.brightness,
                    ),
                    useMaterial3: true,
                  )
                : ThemeData.light(useMaterial3: true),
            darkTheme: darkDynamic != null
                ? ThemeData.from(
                    colorScheme: ColorScheme.fromSeed(
                      seedColor: darkDynamic.primary,
                      brightness: darkDynamic.brightness,
                    ),
                    useMaterial3: true,
                  )
                : ThemeData.dark(useMaterial3: true),
            routerConfig: AppRouter.router,
          );
        },
      ),
    );
  }
}
