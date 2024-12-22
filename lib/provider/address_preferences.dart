import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/address.dart';

class AddressPreferences {
  static const String PREF_KEY = 'addresses';

  Future<void> addAddress(AddressModel address) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> addressList = prefs.getStringList(PREF_KEY) ?? [];
    addressList.add(jsonEncode(address.toMap()));
    await prefs.setStringList(PREF_KEY, addressList);
  }

  Future<List<AddressModel>> getAddresses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> addressList = prefs.getStringList(PREF_KEY) ?? [];
    return addressList.map((e) => AddressModel.fromMap(jsonDecode(e))).toList();
  }

  Future<void> removeAddress(int index) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> addressList = prefs.getStringList(PREF_KEY) ?? [];
    if (index >= 0 && index < addressList.length) {
      addressList.removeAt(index);
      await prefs.setStringList(PREF_KEY, addressList);
    }
  }

  Future<void> clearAddresses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(PREF_KEY);
  }
}
