import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_profile/constants/page_assets.dart';
import 'package:my_profile/constants/page_colors.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key, required this.assetName});

  final String assetName;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: PageColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.16),
            offset: const Offset(0, 3),
            blurRadius: 6,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.23),
            offset: const Offset(0, 3),
            blurRadius: 6,
          ),
        ],
      ),
      child: SvgPicture.asset(
        assetName,
        width: 50,
        height: 50,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
