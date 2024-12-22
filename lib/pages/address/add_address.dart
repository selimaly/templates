import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:template/provider/constant_keys.dart';
import 'package:template/widgets/button.dart';

import '../../model/address.dart';
import '../../provider/address_preferences.dart';


class AddAddressPage extends StatefulWidget {
  const AddAddressPage({Key? key}) : super(key: key);

  @override
  _AddAddressPageState createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _fullAddressController = TextEditingController();
  final AddressPreferences _preferences = AddressPreferences();

  String? _selectedCountry;
  String? _selectedState;
  String? _selectedCity;
  List<AddressModel> _addresses = [];

  final List<String> _countries = ['USA', 'Canada', 'UK'];
  final Map<String, List<String>> _states = {
    'USA': ['California', 'Texas', 'Florida'],
    'Canada': ['Ontario', 'British Columbia', 'Quebec'],
    'UK': ['England', 'Scotland', 'Wales'],
  };
  final Map<String, List<String>> _cities = {
    'California': ['Los Angeles', 'San Francisco', 'San Diego'],
    'Texas': ['Houston', 'Dallas', 'Austin'],
    'Florida': ['Miami', 'Orlando', 'Tampa'],
    'Ontario': ['Toronto', 'Ottawa', 'Hamilton'],
    'British Columbia': ['Vancouver', 'Victoria', 'Surrey'],
    'Quebec': ['Montreal', 'Quebec City', 'Sherbrooke'],
    'England': ['London', 'Manchester', 'Liverpool'],
    'Scotland': ['Edinburgh', 'Glasgow', 'Aberdeen'],
    'Wales': ['Cardiff', 'Swansea', 'Newport'],
  };


  Future<void> _addAddress() async {
    if (_nameController.text.isNotEmpty &&
        _selectedCountry != null &&
        _selectedState != null &&
        _selectedCity != null &&
        _fullAddressController.text.isNotEmpty) {
      AddressModel newAddress = AddressModel(
        name: _nameController.text,
        country: _selectedCountry!,
        state: _selectedState!,
        city: _selectedCity!,
        fullAddress: _fullAddressController.text,
      );
      await _preferences.addAddress(newAddress);
      _nameController.clear();
      _fullAddressController.clear();
      _selectedCountry = null;
      _selectedState = null;
      _selectedCity = null;
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Address'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'User Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: _selectedCountry,
              items: _countries.map<DropdownMenuItem<String>>((String country) {
                return DropdownMenuItem<String>(
                  value: country,
                  child: Text(country),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  _selectedCountry = value;
                  _selectedState = null;
                  _selectedCity = null; // Reset state and city when country changes
                });
              },
              decoration: InputDecoration(
                labelText: 'Select Country',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: _selectedState,
              items: (_selectedCountry != null ? _states[_selectedCountry]! : [])
                  .map((state) {
                return DropdownMenuItem<String>(
                  value: state,
                  child: Text(state),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedState = value;
                  _selectedCity = null; // Reset city when state changes
                });
              },
              decoration: InputDecoration(
                labelText: 'Select State',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: _selectedCity,
              items: (_selectedState != null ? _cities[_selectedState]! : [])
                  .map((city) {
                return DropdownMenuItem<String>(
                  value: city,
                  child: Text(city),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedCity = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Select City',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _fullAddressController,
              decoration: InputDecoration(
                labelText: 'Full Address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16),
            CustomButton(onTap: _addAddress, text: ConstantKeys.addAddress.tr()),
            const SizedBox(height: 16),

          ],
        ),
      ),
    );
  }
}
