import 'package:flutter/material.dart';
import 'package:real_estatee_app/screens/home_screen.dart';
import 'package:real_estatee_app/widgets/main/icon_info.dart';
import 'package:real_estatee_app/widgets/main/projects.dart';
import 'package:real_estatee_app/widgets/main/recommendations.dart';

import 'home_banner.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreen(
      mainSection: SingleChildScrollView(
        child: Column(
          children: [
            HomeBanner(),
            IconInfo(),
            Projects(),
            Recommendations(),
          ],
        ),
      ),
    );
  }
}
