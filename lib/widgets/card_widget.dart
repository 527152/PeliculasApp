import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        width: double.infinity,
        height: size.height * 0.45,
        //color: const Color.fromARGB(255, 9, 38, 53),
        child: Swiper(
          itemCount: 10,
          itemHeight: size.height * 0.4,
          itemWidth: size.width * 0.6,
          layout: SwiperLayout.STACK,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (() {
                Navigator.pushNamed(context, 'details');
              }),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const FadeInImage(
                    placeholder: AssetImage('assets/loading.gif'),
                    image: NetworkImage('https://via.placeholder.com/300x400'),
                    fit: BoxFit.cover),
              ),
            );
          },
        ));
  }
}
