import 'dart:io';
import 'package:flutter/services.dart';

void main() async {
  const baseLink = 'https://steamcommunity.com/sharedfiles/filedetails/?id=';
  final ids = [
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

  const baseDownloadLink = 'https://smods.ru/?s=';

  // for (final e in ids) {

  // }

  await Clipboard.setData(ClipboardData(text: '$baseDownloadLink${ids[0]}'));

  // Process.run('microsoftedge.exe', ['$baseLink${ids[0]}']);
}
