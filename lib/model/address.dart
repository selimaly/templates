class AddressModel {
  final String name;
  final String country;
  final String state;
  final String city;
  final String fullAddress;

  AddressModel({
    required this.name,
    required this.country,
    required this.state,
    required this.city,
    required this.fullAddress,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'country': country,
      'state': state,
      'city': city,
      'fullAddress': fullAddress,
    };
  }

  factory AddressModel.fromMap(Map<String, dynamic> map) {
    return AddressModel(
      name: map['name'],
      country: map['country'],
      state: map['state'],
      city: map['city'],
      fullAddress: map['fullAddress'],
    );
  }
}
