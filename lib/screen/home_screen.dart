import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/datas/carousel_image.dart';

List<Widget> carouselItems = images
    .map((cimage) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Image.network(cimage,fit: BoxFit.cover,),
          ),
        ))
    .toList();

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Carousel Slider'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            width: double.infinity,
            child: Stack(
              children: [
                PageView(
                  children: carouselItems,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
