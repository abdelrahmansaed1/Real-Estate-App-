import 'package:flutter/material.dart';
import 'package:real_estatee_app/constants.dart';
import 'package:real_estatee_app/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isLargeMobile(context) ? 1 : 2.25,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/background.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            color: kDarkColor.withOpacity(0.1),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Build a greate future \nfor all of us',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headlineLarge!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                          )
                      : Theme.of(context).textTheme.headlineLarge!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                ),
                const SizedBox(
                  height: kDefaultPadding,
                ),
                ElevatedButton(
                  style: TextButton.styleFrom(
                      shape: const LinearBorder(),
                      padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding,
                        horizontal: kDefaultPadding * 2,
                      ),
                      backgroundColor: kPrimaryColor,
                      foregroundColor: Colors.white),
                  onPressed: () {},
                  child: const Text('Contact us'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
