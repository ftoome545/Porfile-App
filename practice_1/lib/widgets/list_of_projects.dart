import 'package:flutter/material.dart';
import '../screens/project_details.dart';

class ListOfProjects extends StatelessWidget {
  // const ListOfProjects({super.key});

  final String id;
  final String title;
  final String image;
  final String url;
  final String description;
  final List<String> tools;
  final String imgDetail;

  ListOfProjects(this.id, this.title, this.image, this.url, this.description,
      this.tools, this.imgDetail);

  //we change tha name of context to ctx to it different from the other
  //context in the build method
  void selectProject(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(
      builder: (c) => ProjectDetails(title, description, tools, url, imgDetail),
    ));
  }

  @override
  Widget build(BuildContext context) {
    //we'll wrap the Stack widget with InkWell to make the card clickable
    return InkWell(
      onTap: () => selectProject(context),
      splashColor: Colors.amber,
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              image,
              height: 450.0,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ],
      ),
    );
  }
}
