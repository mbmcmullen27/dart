import 'dart:io';
import 'dart:async';
import 'dart:convert';


main() async {
  Uri apiUrl = Uri.parse("https://deckofcardsapi.com/api/deck/new/shuffle/?deck_count=1");
  
  HttpClientRequest req = await new HttpClient().getUrl(apiUrl);
  HttpClientResponse res = await req.close();

  Stream resStream = res.transform(Utf8Decoder());

  await for (var data in resStream) {
    print(data);
  }

  print("done");
  exit(0);
}