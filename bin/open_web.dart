import 'dart:io';

import 'package:open_web/game/game.dart';
import 'package:open_web/service_provider.dart';

Future<void> main(List<String> arguments) async {
  /// Change this to your own game class
  final game = registerService<CitiesSkylines>(CitiesSkylines());

  for (final e in game.getGameIds()) {
    if (game.appId != null) {
      Process.run(
        'microsoftedge.exe',
        ['${game.url}$e&app=${game.appId}'],
      );
    } else {
      Process.run('microsoftedge.exe', ['${game.url}$e']);
    }

    await Future.delayed(const Duration(seconds: 1));
  }
}
