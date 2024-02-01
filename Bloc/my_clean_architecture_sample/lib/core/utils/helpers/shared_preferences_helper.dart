// import 'dart:convert';

// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:smb_app/modules/authentication/data/models/profile.dart';

// class SharedPreferencesHelper {
//   // SETTERS
//   static Future<void> setStringPrefValue({
//     required String key,
//     required String? value,
//   }) async {
//     final pref = await SharedPreferences.getInstance();
//     pref.setString(key, value!);
//   }

//   static Future<void> setIntPrefValue({
//     required String key,
//     required int value,
//   }) async {
//     final pref = await SharedPreferences.getInstance();
//     pref.setInt(key, value);
//   }

//   static Future<void> setBoolPrefValue({
//     required String key,
//     required bool value,
//   }) async {
//     final prefs = await SharedPreferences.getInstance();
//     prefs.setBool(key, value);
//   }

//   static Future<void> setLoggedUser({
//     required String key,
//     required Profile value,
//   }) async {
//     print('value $value');

//     SharedPreferences pref = await SharedPreferences.getInstance();
//     String user = jsonEncode(value);
//     pref.setString(key, user);
//     print('save $user');
//   }

//   // GETTERS
//   static Future<String?> getStringPrefValue({required String key}) async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getString(key);
//   }

//   static Future<int?> getIntPrefValue({required String key}) async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getInt(key);
//   }

//   static Future<bool?> getBoolPrefValue({required String key}) async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getBool(key);
//   }

//   // REMOVAL
//   static Future<dynamic> removeKeyData({required String key}) async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.remove(key);
//   }

//   static Future<dynamic> keyContains({required String key}) async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.containsKey(key);
//   }

//   static Future<void> clearSharedPreferencesExcept(
//     List<String> keysToKeep,
//   ) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     Set<String> keys = prefs.getKeys();
//     for (String key in keys) {
//       if (!keysToKeep.contains(key)) {
//         prefs.remove(key);
//       }
//     }
//   }

//   static Future<Profile?> getLoggedUser(String key) async {
//     final SharedPreferences prefs = await SharedPreferences.getInstance();
//     Map<String, dynamic>? userMap = {};
//     final String? userStr = prefs.getString(key);
//     print('str $userStr');
//     if (userStr != null) {
//       userMap = jsonDecode(userStr) as Map<String, dynamic>;
//     }
//     final Profile user = Profile.fromJson(userMap);
//     return user;
//   }
// }
