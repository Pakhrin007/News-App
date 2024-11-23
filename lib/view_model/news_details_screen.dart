import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NewsDetailsScreen extends StatefulWidget {
  final String newsImage,
      newsTitle,
      newsDate,
      author,
      description,
      content,
      source;
  const NewsDetailsScreen({
    Key? key,
    required this.newsImage,
    required this.newsTitle,
    required this.newsDate,
    required this.author,
    required this.description,
    required this.content,
    required this.source,
  }) : super(key: key);

  @override
  State<NewsDetailsScreen> createState() => _NewsDetailsScreenState();
}

class _NewsDetailsScreenState extends State<NewsDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            height: 200,
            width: 400,
            child: CachedNetworkImage(imageUrl: widget.newsImage),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 200),
            child: Container(
              height: 200,
              width: 400,
              child: Text(widget.newsTitle),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 230),
            child: Container(
              height: 200,
              width: 400,
              child: Text(widget.description),
            ),
          ),
        ],
      ),
    );
  }
}
