import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum SocialMediaType { facebook, whatsapp, twitter }

class SocialMediaIcon extends StatelessWidget {
  final SocialMediaType socialMediaType;

  const SocialMediaIcon({
    Key? key,
    required this.socialMediaType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
          color: Colors.grey.shade600,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          )),
      child: Builder(builder: (_) {
        if (socialMediaType == SocialMediaType.whatsapp) {
          return const FaIcon(
            FontAwesomeIcons.whatsapp,
            color: Color(0xff52CD60),
            size: 20,
          );
        } else if (socialMediaType == SocialMediaType.facebook) {
          return const FaIcon(
            FontAwesomeIcons.facebook,
            color: Color(0xff4267B2),
            size: 20,
          );
        } else {
          return const FaIcon(
            FontAwesomeIcons.twitter,
            color: Color(0xff1DA1F2),
            size: 20,
          );
        }
      }),
    );
  }
}
