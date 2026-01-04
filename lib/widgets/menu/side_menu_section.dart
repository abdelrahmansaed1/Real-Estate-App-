import 'package:flutter/material.dart';
import 'package:real_estatee_app/constants.dart';
import 'package:real_estatee_app/widgets/menu/contact_info.dart';
import 'package:real_estatee_app/widgets/menu/goal.dart';
import 'logo.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Logo(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  children: [
                    const ContactInfo(),
                    const Divider(),
                    const Goal(),
                    const Divider(),
                    const SizedBox(height: kDefaultPadding / 1.6),
                    buildTextButton(),
                    Container(
                      margin:
                          const EdgeInsets.only(top: kDefaultPadding / 1.75),
                      color: kSecondaryColor,
                      child: Row(
                        children: [
                          const Spacer(),
                          buildIconButton('linkedin'),
                          buildIconButton('github'),
                          buildIconButton('twitter'),
                          buildIconButton('dribble'),
                          const Spacer(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  IconButton buildIconButton(String imageUrl) {
    return IconButton(
      onPressed: () {},
      icon: Image.asset('assets/images/$imageUrl.png'),
    );
  }

  Widget buildTextButton() {
    return TextButton(
        onPressed: () {},
        child: const FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.download,
                color: Colors.blueAccent,
              ),
              SizedBox(
                width: kDefaultPadding / 2,
              ),
              Text(
                'Download Brochure',
                style: TextStyle(
                  color: kBodyTextColor,
                ),
              )
            ],
          ),
        ));
  }
}
