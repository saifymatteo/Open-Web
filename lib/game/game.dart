export 'cities_skylines.dart';
export 'xcom_2.dart';

abstract class Game {
  /// Base URL for game mod downloads
  static const baseDownloadLink = 'https://smods.ru/?s=';
  static const baseCatalogueDownloadLink = 'https://catalogue.smods.ru/?s=';
  static const baseSteamLink =
      'https://steamcommunity.com/sharedfiles/filedetails/?id=';

  /// URL to be use for downloading
  String get url;

  /// App ID of the game, similar to Steam game ID
  String? get appId;

  /// Get [List] of mod IDs from [Game]
  List<String> getGameIds();
}
