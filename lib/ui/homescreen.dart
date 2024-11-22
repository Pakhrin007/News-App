import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:news/models/newschannelheadlinesmodel.dart';
import 'package:news/view_model/news_view_model.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  NewsViewModel newsViewModel = NewsViewModel();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.square,
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Text(
            "News",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
              // color: Colors.green,
              height: height * .5,
              width: width,
              child: FutureBuilder<newschannelheadlinesmodel>(
                future: newsViewModel.fetchnewschannelheadlinesapi(),
                builder: (BuildContext context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: SpinKitCircle(
                        size: 50,
                        color: Colors.blue,
                      ),
                    );
                  } else {
                    return Container();
                  }
                },
              ))
        ],
      ),
    );
  }
}
