import 'dart:io';

import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Change [Game] to desired
  const gameToDownload = Game.xcom2;

  for (final e in gameToDownload.getGameIds()) {
    if (gameToDownload.appId != null) {
      Process.run(
        'microsoftedge.exe',
        ['${gameToDownload.url}$e&app=${gameToDownload.appId}'],
      );
    } else {
      Process.run('microsoftedge.exe', ['$baseDownloadLink$e']);
    }
    await Future.delayed(const Duration(seconds: 1));
  }

  runApp(
    const MaterialApp(
      home: Scaffold(),
    ),
  );
}

const baseSteamLink = 'https://steamcommunity.com/sharedfiles/filedetails/?id=';
const baseDownloadLink = 'https://smods.ru/?s=';
const baseCatalogueDownloadLink = 'https://catalogue.smods.ru/?s=';

enum Game {
  citiesSkylines(url: baseDownloadLink),
  xcom2(url: baseCatalogueDownloadLink, appId: '268500');

  const Game({required this.url, this.appId});

  final String url;
  final String? appId;

  List<String> getGameIds() {
    switch (this) {
      case Game.citiesSkylines:
        return [
          '2810536248',
          '2559042012',
          '2502526929',
          '2773460744',
          '1627986403',
          '2818311563',
          '2881031511',
          '2723628116',
          '2862992091',
          '611254368',
          '2696146165',
          '2862940316',
          '2133885971',
          '2105755179',
          '2041457644',
          '2858591409',
          '1619685021',
          '2862881785',
          '2866992009',
          '1721492498',
          '2172488844',
          '445589127',
          '530771650',
          '1412844620',
          '2474567113',
          '1625704117',
          '1677913611',
          '1776052533',
          '768213484',
          '2645254941',
          '1764637396',
          '1637663252',
        ];
      case Game.xcom2:
        return [
          '1126395106',
          '709499969',
          '1716973380',
          '1124288875',
          '749138678',
          '934236622',
          '620600092',
          '1124410215',
          '648410303',
          '1124175584',
          '1128263618',
          '624726628',
          '616359783',
          '1128430976',
          '1135202021',
          '858237491',
          '634163703',
          '1124333578',
          '1125117314',
          '1123174832',
          '1289686596',
          '1123486456',
          '2550561145',
          '1949300408',
          '1949328656',
          '2849922249',
          '2347354900',
          '2847584316',
          '1276342555',
          '1440233515',
          '2834554740',
          '1397839793',
          '1486607466',
          '2567229533',
          '2834929289',
          '1149493976',
          '1122974240',
          '667104300',
          '1127539414',
          '1134256495',
          '2534737016',
        ];
    }
  }
}
