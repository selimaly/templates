import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OptionRow extends StatelessWidget {
  const OptionRow({
    super.key,
    required this.iconPath,
    required this.label,
    required this.onTap
  });
  final String label, iconPath;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  SvgPicture.asset(iconPath,),
                  SizedBox(width: 6),
                  Expanded(child: Text(label, style: TextStyle(overflow: TextOverflow.ellipsis, ),)),
                ],
              ),
            ),
            Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
