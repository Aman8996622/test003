
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test003/shared_preference/shared_preference.dart';



final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  // Dio client

  var sharedPreferences = await SharedPreferences.getInstance();

  injector.registerSingleton<PreferenceHelper>(
      PreferenceHelper(sharedPreferences));



}
