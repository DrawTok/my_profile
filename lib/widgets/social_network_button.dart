import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialNetworkButton extends StatelessWidget {
  const SocialNetworkButton({super.key, required this.assetName, required this.link, this.size = 30});

  final String assetName;
  final String link;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (await canLaunchUrl(Uri.parse(link))) {
          await launchUrl(Uri.parse(link), mode: LaunchMode.externalApplication);
        } else {
          throw 'Không thể mở $link';
        }
      },
      child: SvgPicture.asset(assetName, width: size, height: size, fit: BoxFit.scaleDown),
    );
  }
}
