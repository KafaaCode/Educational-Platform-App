import 'package:shared_preferences_android/shared_preferences_android.dart';

class LocalStorage {
  SharedPreferencesAsyncAndroidOptions options =
      const SharedPreferencesAsyncAndroidOptions(
          backend: SharedPreferencesAndroidBackendLibrary.SharedPreferences);

  void test() {}
}
