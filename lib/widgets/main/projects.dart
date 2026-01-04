import 'package:flutter/material.dart';
import 'package:real_estatee_app/constants.dart';
import 'package:real_estatee_app/models/projects.dart';
import 'package:real_estatee_app/responsive.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding),
            child: Text(
              "Our Projects",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: Colors.white),
            ),
          ),
          Responsive(
            desktop: buildGridView(
              itemCount: demoProjects.length,
              crossAxisCount: 3,
              aspectRatio: .75,
              itemBuilder: (context, index) => ProjectCard(
                project: demoProjects[index],
              ),
            ),
            tablet: buildGridView(
              itemCount: demoProjects.length,
              crossAxisCount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
              aspectRatio: .75,
              itemBuilder: (context, index) => ProjectCard(
                project: demoProjects[index],
              ),
            ),
            largeMobile: buildGridView(
              itemCount: demoProjects.length,
              crossAxisCount: 2,
              aspectRatio: .75,
              itemBuilder: (context, index) => ProjectCard(
                project: demoProjects[index],
              ),
            ),
            mobile: buildGridView(
              itemCount: demoProjects.length,
              crossAxisCount: 1,
              aspectRatio: .75,
              itemBuilder: (context, index) => ProjectCard(
                project: demoProjects[index],
              ),
            ),
          )
        ],
      ),
    );
  }

  GridView buildGridView({
    required int itemCount,
    required int crossAxisCount,
    required double aspectRatio,
    required IndexedWidgetBuilder itemBuilder,
  }) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: kDefaultPadding,
        crossAxisSpacing: kDefaultPadding,
        childAspectRatio: aspectRatio,
      ),
      itemBuilder: itemBuilder,
    );
  }
}

class ProjectCard extends StatelessWidget {
  final Project project;
  const ProjectCard({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            project.image!,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: kDefaultPadding),
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
          const SizedBox(height: kDefaultPadding),
          Expanded(
            child: Text(
              project.description!,
              style: const TextStyle(height: 1.5, color: kBodyTextColor),
            ),
          ),
          const SizedBox(height: kDefaultPadding / 2),
          TextButton(
            onPressed: () {},
            child: const Text(
              'More details >',
              style: TextStyle(
                color: kPrimaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
