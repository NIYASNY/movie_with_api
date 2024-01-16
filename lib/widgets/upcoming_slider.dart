import 'package:flutter/material.dart';

class upcomingslider extends StatefulWidget {
  const upcomingslider({super.key, required this.snapshot});

  final AsyncSnapshot snapshot;

  @override
  State<upcomingslider> createState() => _upcomingsliderState();
}

class _upcomingsliderState extends State<upcomingslider> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                color: Colors.amber,
                height: 200,
                width: 150,
              ),
            ),
          );
        },
      ),
    );
  }
}
