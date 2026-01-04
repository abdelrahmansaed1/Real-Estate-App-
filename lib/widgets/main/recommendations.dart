import 'package:flutter/material.dart';
import 'package:real_estatee_app/constants.dart';
import 'package:real_estatee_app/models/recommendation.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Client Recommendations:',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: Colors.white),
          ),
          const SizedBox(height: kDefaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  demoRecommendations.length,
                  (index) => RecommendationCard(
                        recommendation: demoRecommendations[index],
                      )),
            ),
          )
        ],
      ),
    );
  }
}

class RecommendationCard extends StatelessWidget {
  final Recommendation recommendation;
  const RecommendationCard({
    super.key,
    required this.recommendation,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: kDefaultPadding),
      child: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        width: MediaQuery.of(context).size.width < 399 ? 350 : 400,
        color: kSecondaryColor,
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(recommendation.image!),
              ),
              title: Text(recommendation.name!,
                  style: const TextStyle(color: Colors.white)),
              subtitle: Text(recommendation.source!),
            ),
            const SizedBox(height: kDefaultPadding / 2),
            Text(
              recommendation.text!,
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
              style: const TextStyle(height: 1.5),
            )
          ],
        ),
      ),
    );
  }
}
