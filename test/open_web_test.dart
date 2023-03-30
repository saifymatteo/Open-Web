import 'package:open_web/game/game.dart';
import 'package:open_web/service_provider.dart';
import 'package:test/test.dart';

void main() {
  group('Service Locator', () {
    test('Cities Skylines', () {
      final citiesSkylines = registerService<CitiesSkylines>(CitiesSkylines());

      final getCitiesSkylines = getService<CitiesSkylines>();
      expect(citiesSkylines, getCitiesSkylines);
    });
    test('XCom 2', () {
      final xCom2 = registerService<XCom2>(XCom2());
      final getXCom2 = getService<XCom2>();
      expect(xCom2, getXCom2);
    });
  });
}
