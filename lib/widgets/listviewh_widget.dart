import 'package:flutter/material.dart';

class ListViewH extends StatelessWidget {
  const ListViewH({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      //color: Colors.blueGrey,
      width: double.infinity,
      // margin: const EdgeInsets.only(
      //   top: 20,
      // ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Populares',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return const ListViewCard();
            },
          ),
        ),
      ]),
    );
  }
}

class ListViewCard extends StatelessWidget {
  const ListViewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'details');
      },
      child: Container(
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(10),
        //   //color: const Color.fromARGB(255, 95, 108, 185)),
        // ),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: 190,
        width: 130,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: const FadeInImage(
                  // height: 100,
                  // width: 130,
                  fit: BoxFit.cover,
                  placeholder: AssetImage('assets/no-image.jpg'),
                  image: NetworkImage('https://via.placeholder.com/300x400')),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Titulo Peliculas',
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            )
          ],
        ),
        //color: Colors.grey,
      ),
    );
  }
}
