import 'package:flutter/material.dart';

class Project {
  final String id;
  final String title;
  final String image;
  final String url;
  final String description;
  final List<String> tools;
  final String imageDetail;

  const Project({
    required this.id,
    required this.title,
    required this.image,
    required this.url,
    required this.description,
    required this.tools,
    required this.imageDetail,
  });
}
