import 'package:adaptix/adaptix.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:template/provider/constant.dart';
import 'package:template/provider/constant_keys.dart';
import 'package:template/widgets/button.dart';
import 'package:template/widgets/container/border_container.dart';

import '../../model/address.dart';
import '../../provider/address_preferences.dart';
import 'add_address.dart';

class SelectAddressPage extends StatefulWidget {
  const SelectAddressPage({super.key});

  @override
  State<SelectAddressPage> createState() => _SelectAddressPageState();
}

class _SelectAddressPageState extends State<SelectAddressPage> {
  List<AddressModel> _addresses = [];
  final AddressPreferences _preferences = AddressPreferences();
  int? _selectedAddressIndex; // Tracks the selected address index

  Future<void> _removeAddress(int index) async {
    try {
      await _preferences.removeAddress(index);
      _loadAddresses();
    } catch (e) {
      // Handle error and show feedback
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to remove address: $e')),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _loadAddresses();
  }

  Future<void> _loadAddresses() async {
    try {
      final addresses = await _preferences.getAddresses();
      setState(() {
        _addresses = addresses;
      });
    } catch (e) {
      // Handle error and show feedback
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to load addresses: $e')),
      );
    }
  }

  void _onAddressSelected(int index) {
    setState(() {
      _selectedAddressIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Address"),
      ),
      body: _addresses.isEmpty
          ? Center(
        child: Text(
          "No addresses found.",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      )
          : ListView.builder(
        itemCount: _addresses.length,
        itemBuilder: (context, index) {
          final address = _addresses[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: BorderContainer(
              child: Row(
                children: [
                  Radio<int>(
                    value: index,
                    groupValue: _selectedAddressIndex,
                    onChanged: (value) {
                      if (value != null) {
                        _onAddressSelected(value);
                      }
                    },
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            address.name,
                            style: s15Medium,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '${address.country}, ${address.state}, ${address.city}\n${address.fullAddress}',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        height: 55.adaptedPx(context),
        padding: EdgeInsets.symmetric(horizontal: 5.adaptedPx(context), vertical: 3.adaptedPx(context)),
        child: Row(
          children: [
            Expanded(
              child: CustomButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AddAddressPage()),
                  );
                },
                text: ConstantKeys.addAddress.tr(),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: CustomButton(
                onTap: () {
                  if (_selectedAddressIndex != null) {
                    final selectedAddress = _addresses[_selectedAddressIndex!];
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Selected: ${selectedAddress.name}')),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Please select an address')),
                    );
                  }
                },
                text: "Select".tr(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
