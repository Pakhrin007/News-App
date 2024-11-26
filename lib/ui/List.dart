import 'package:flutter/material.dart';

class Listed extends StatefulWidget {
  const Listed({super.key});

  @override
  State<Listed> createState() => _ListedState();
}

class _ListedState extends State<Listed> {
  var arrnames = ['santosh', 'aryan', 'bishant', 'santosh', 'aryan', 'bishant'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lists"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          height: 600, // Fixed height for the main container
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.grey),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      "Name: ${arrnames[index]}",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              );
            },
            itemCount: arrnames.length,
          ),
        ),
      ),
    );
  }
}
