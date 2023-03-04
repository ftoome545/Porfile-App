import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../app_data.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher.dart';

class ProjectDetails extends StatefulWidget {
  // const ProjectDetails({super.key});

  final String project_title;
  final String project_description;
  final List<String> project_tools;
  final String project_url;
  final String project_imgDetail;

  ProjectDetails(this.project_title, this.project_description,
      this.project_tools, this.project_url, this.project_imgDetail);

  @override
  State<ProjectDetails> createState() => _ProjectDetailsState();
}

class _ProjectDetailsState extends State<ProjectDetails> {
  int indextTools = 0;

  // dynamic build_ToolsUsed(List<String> tools) {
  //   dynamic result = tools[indextTools];
  //   indextTools++;
  //   return result;
  // }

  Future launchWebsite() async {
    final url = widget.project_url;

    await launch(url);
  }

  // _launchURLBrowser() async {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.project_title,
          style: TextStyle(
            fontFamily: 'Cairo',
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        // centerTitle: true,
        backgroundColor: Color.fromARGB(255, 3, 55, 98),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'The project purpose',
                        style: TextStyle(
                          fontFamily: 'PlayfairDisplay',
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        widget.project_description,
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Tools that I used',
                        style: TextStyle(
                          fontFamily: 'PlayfairDisplay',
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'flutter',
                          // build_ToolsUsed(widget.project_tools),
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: 24.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Dart',
                          // build_ToolsUsed(widget.project_tools),
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: 24.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      widget.project_imgDetail,
                      // fit: BoxFit.cover,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 15.0),
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'You can see the whole project on the GitHub ',
                        style: TextStyle(
                          fontFamily: 'PlayfairDisplay',
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: 'HERE',
                            style: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Cairo',
                              fontSize: 24.0,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = launchWebsite,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
