import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const AppBarDetails(),
          SliverList(
              delegate: SliverChildListDelegate([
            const InfoDetails(),
            const ResumenPelicula(),
            const ResumenPelicula(),
            const PasarelaActores()
          ]))
        ],
      ),
    );
  }
}

class AppBarDetails extends StatelessWidget {
  const AppBarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Text('Titulo Pelicula'),
        centerTitle: true,
        background: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('https://via.placeholder.com/300x400'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class InfoDetails extends StatelessWidget {
  const InfoDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      margin: const EdgeInsets.only(top: 13),
      //color: Colors.blueGrey,
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: const FadeInImage(
            height: 250,
            width: 180,
            placeholder: AssetImage('assets/loading.gif'),
            image: NetworkImage('https://via.placeholder.com/300x400'),
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Titulo Pelicula',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 20),
              maxLines: 2,
            ),
            const Text(
              'Titulo oiginal',
              style: TextStyle(fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            Row(
              children: const [
                Icon(
                  Icons.star,
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Text('Votos peliculas')
              ],
            )
          ],
        )
      ]),
    );
  }
}

class ResumenPelicula extends StatelessWidget {
  const ResumenPelicula({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: const Text(
        'Después de sufrir una tragedia familiar, Mack Phillips cae en una profunda depresión que le lleva a cuestionar todas sus creencias. Sumido en una crisis de fe, recibe una enigmática carta donde un misterioso personaje le cita en una cabaña abandonada en lo más profundo de los bosques de Oregón. A pesar de sus dudas, Mack viaja a la cabaña, donde se encontrará con alguien inesperado.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class PasarelaActores extends StatelessWidget {
  const PasarelaActores({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //color: Colors.blueGrey,
      height: 200,
      margin: const EdgeInsets.only(bottom: 30),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) => const CardActores(),
      ),
    );
  }
}

class CardActores extends StatelessWidget {
  const CardActores({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      //color: Colors.blue,
      child: Column(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: const FadeInImage(
            height: 140,
            width: 100,
            placeholder: AssetImage('assets/no-image.jpg'),
            image: NetworkImage('https://via.placeholder.com/150x300'),
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Nombre Actor nombre ctor nombtre',
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
