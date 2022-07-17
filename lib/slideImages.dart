import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SlideImages extends StatefulWidget {
  const SlideImages({Key? key}) : super(key: key);

  @override
  _SlideImagesState createState() => _SlideImagesState();
}

class _SlideImagesState extends State<SlideImages> {
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "https://media.istockphoto.com/photos/fashion-clothes-on-a-rack-in-a-light-background-indoors-place-for-picture-id1257563298?b=1&k=20&m=1257563298&s=170667a&w=0&h=Hhf0-AsQp7Z7k9q8XKHfQUY86uPJvE8vmmGHXihWS_M=",
      "https://media.istockphoto.com/photos/women-clothes-hanging-on-hangers-clothing-rails-fashion-design-picture-id916092484?k=20&m=916092484&s=612x612&w=0&h=2aTLAucj_-qbbfhBiJEXfdiY3-k0gx0el8OrKFpi3O8=",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKT7oPyaXfY35IXOot0gr1NlX7h5V-3m5BOw&usqp=CAU",
      "https://st.depositphotos.com/1003633/2284/i/600/depositphotos_22848360-stock-photo-fashion-clothes-hang-on-a.jpg"
    ];
    return Container(
        child: GridView.count(
      crossAxisCount: 1,
      childAspectRatio: 1.5,
      crossAxisSpacing: 0.0,
      mainAxisSpacing: 0.0,
      shrinkWrap: true,
      children: [
        Stack(
          alignment: Alignment.centerLeft,
          children: [
            CarouselSlider(
                items: images.map((e) => ClipRect(
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Image.network(e,
                            width: 1050, height: 350, fit: BoxFit.cover)
                      ],
                    ))).toList(),
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: false,
                    enableInfiniteScroll: true
                ))
          ],
        )

      ],
    ));
  }
}
