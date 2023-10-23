import 'dart:convert';

import 'package:alquran_app/app/data/models/surah.dart';
import 'package:http/http.dart' as http;

void main() async {
  Uri url = Uri.parse("https://api.quran.gading.dev/surah");
  var res = await http.get(url);

  List data = (json.decode(res.body) as Map<String, dynamic>)["data"];

// 1-114 -> index ke 113 = annas

  // print(data[113]);

// data dari api (raw data) -> model ( yan sudah di siapkan)
  Surah surahAnnas = Surah.fromJson(data[113]);

  // print(surahAnnas.name);
  // print("=========");
  // print(surahAnnas.number);
  // print("=========");
  // print(surahAnnas.numberOfVerses);
  // print("=========");
  // print(surahAnnas.revelation);
  // print("=========");
  // print(surahAnnas.sequence);
  // print("=========");
  // print(surahAnnas.tafsir);


  //masuk ke nested model
   Uri urlAnnas = Uri.parse("https://api.quran.gading.dev/surah/${surahAnnas.number}");
  var resAnnas = await http.get(url);
print(resAnnas.body);
}
