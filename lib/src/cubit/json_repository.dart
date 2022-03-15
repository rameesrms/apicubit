import 'package:flutter/services.dart' show rootBundle;

class JSONRespository{
Future <String> getContactsData() async{
String data =await rootBundle.loadString("assets/data/records.json");
return data;
}

}