import 'dart:async' show Future;
import 'package:shared_preferences/shared_preferences.dart';

// A class to manage shared preferences for storing simple key-value pairs
class SharedPref {
  static SharedPreferences?
      _prefInstance; // A private instance of SharedPreferences

  // A private getter to lazily initialize the SharedPreferences instance
  static Future<SharedPreferences> get _instance async =>
      _prefInstance ??= await SharedPreferences.getInstance();

  // Method to initialize the SharedPreferences instance
  static Future<SharedPreferences?> init() async {
    // Assign the instance to _prefInstance
    _prefInstance = await _instance;
    return _prefInstance; // Return the initialized instance
  }

  // Method to get a string value from shared preferences by key
  static String? getString(String key) {
    return _prefInstance?.getString(
        key); // Return the string value for the given key, or null if not found
  }

  // Method to set a string value in shared preferences by key
  static Future<bool> setString(String key, String value) async {
    var pref = await _instance; // Await the SharedPreferences instance
    return pref.setString(
        key, value); // Set the string value and return the result
  }

  // Method to remove a key-value pair from shared preferences
  static Future<bool> remove(String key) async {
    var pref = await _instance; // Await the SharedPreferences instance
    return pref.remove(key); // Remove the key and return the result
  }
}
