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

class ListAddress extends StatefulWidget {
  const ListAddress({super.key});

  @override
  State<ListAddress> createState() => _ListAddressState();
}

class _ListAddressState extends State<ListAddress> {
  List<AddressModel> _addresses = [];
  final AddressPreferences _preferences = AddressPreferences();

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Address"),
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
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    top: 0,
                    child: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () => _removeAddress(index),
                    ),
                  ),
                  Padding(
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
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.adaptedPx(context), vertical: 3.adaptedPx(context)),
        height: 55.adaptedPx(context),
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
    );
  }
}
