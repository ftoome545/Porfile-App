import 'package:flutter/material.dart';
import '../app_data.dart';
import '../widgets/app_drawer.dart';
import '../widgets/list_of_projects.dart';

class ProjectScreen extends StatefulWidget {
  static const screenRoute = '/projects-page';

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  // late String? projectTitle;
  // late List<Project> displayProjects;
  //   List<Project> _availableTrips = Project_data;

  // void initState() {
  //   super.initState();
  // }

  // void didChangeDependencies() {
  //   final routesArguments =
  //       ModalRoute.of(context)!.settings.arguments as Map<String, String?>;
  //   final categoryId = routesArguments['id'];
  //   projectTitle = routesArguments['title'];
  //   displayProjects = widget.Project_date.where((Project) {
  //     return Project.Project.contains(categoryId);
  //   }).toList();

  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Projects',
          style: TextStyle(
            fontFamily: 'Cairo',
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        // centerTitle: true,
        backgroundColor: Color.fromARGB(255, 3, 55, 98),
      ),
      endDrawer: AppDrawer(),
      body: GridView(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 7 / 8,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          children: Project_date.map((ProjectData) => ListOfProjects(
              ProjectData.id,
              ProjectData.title,
              ProjectData.image,
              ProjectData.url,
              ProjectData.description,
              ProjectData.tools,
              ProjectData.imageDetail)).toList()),
    );
  }
}
