import 'package:flutter/material.dart';
import 'package:real_estatee_app/constants.dart';
import 'package:real_estatee_app/responsive.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(kDefaultPadding * 3),
        child: Responsive.isLargeMobile(context)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      buildIconInfo(
                        context,
                        Icons.supervisor_account,
                        '67+',
                        'Clients',
                      ),
                      const SizedBox(
                        height: kDefaultPadding * 3,
                      ),
                      buildIconInfo(
                        context,
                        Icons.location_on,
                        '136+',
                        'Projects',
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      buildIconInfo(
                        context,
                        Icons.public,
                        '30+',
                        'Countries',
                      ),
                      const SizedBox(
                        height: kDefaultPadding * 3,
                      ),
                      buildIconInfo(
                        context,
                        Icons.star,
                        '13K+',
                        'Stars',
                      ),
                    ],
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildIconInfo(
                    context,
                    Icons.supervisor_account,
                    '67+',
                    'Clients',
                  ),
                  buildIconInfo(
                    context,
                    Icons.location_on,
                    '136+',
                    'Projects',
                  ),
                  buildIconInfo(
                    context,
                    Icons.public,
                    '30+',
                    'Countries',
                  ),
                  buildIconInfo(
                    context,
                    Icons.star,
                    '13K+',
                    'Stars',
                  ),
                ],
              ));
  }

  Column buildIconInfo(
      BuildContext context, IconData icon, String text, String lable) {
    return Column(
      children: [
        Icon(
          icon,
          size: 50,
        ),
        const SizedBox(
          height: kDefaultPadding / 2,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: kPrimaryColor,
                fontSize: 30,
              ),
        ),
        Text(
          lable,
          style: const TextStyle(color: kBodyTextColor, fontSize: 18),
        )
      ],
    );
  }
}
