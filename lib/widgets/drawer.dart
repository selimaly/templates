import 'package:adaptix/adaptix.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../provider/constant.dart';
import 'option_row.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      width: 70.widthFraction(context),
      child: Column(
        children: [
          Container(
            height: 30.heightFraction(context),
            child: Center(
              child: SvgPicture.asset(
                "assets/app/transparent.svg",
                height: 80.adaptedPx(context),
                width: 80.adaptedPx(context),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.spaceSize),
              child: ListView(
                children: [
                  OptionRow(
                    iconPath: "assets/icon/shop.svg",
                    label: "My Store",
                    onTap: () {},
                  ),
                  Divider(color: AppConstants.dividerColor),
                  OptionRow(
                    iconPath: "assets/icon/location.svg",
                    label: "My Addresses",
                    onTap: () {},
                  ),
                  Divider(color: AppConstants.dividerColor),
                  OptionRow(
                    iconPath: "assets/icon/favorite.svg",
                    label: "My Favorites",
                    onTap: () {},
                  ),
                  Divider(color: AppConstants.dividerColor),
                  OptionRow(
                    iconPath: "assets/icon/orders.svg",
                    label: "My Orders",
                    onTap: () {},
                  ),
                  Divider(color: AppConstants.dividerColor),
                  OptionRow(
                    iconPath: "assets/icon/global.svg",
                    label: "Select Language",
                    onTap: () {},
                  ),
                  Divider(color: AppConstants.dividerColor),
                  OptionRow(
                    iconPath: "assets/icon/security.svg",
                    label: "Policies",
                    onTap: () {},
                  ),
                  Divider(color: AppConstants.dividerColor),
                  OptionRow(
                    iconPath: "assets/icon/contacts.svg",
                    label: "Contacts",
                    onTap: () {},
                  ),
                  Divider(color: AppConstants.dividerColor),
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Distribute space
                        mainAxisSize: MainAxisSize.min, // Prevent unbounded constraints
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min, // Prevent the internal Row from expanding
                            children: [
                              SvgPicture.asset(
                                "assets/icon/logout.svg",
                              ),
                              const SizedBox(width: 6),
                              Flexible( // Use Flexible instead of Expanded
                                child: Text(
                                  "Logout",
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

