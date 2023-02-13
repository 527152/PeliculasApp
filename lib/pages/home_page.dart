import 'package:flutter/material.dart';
import 'package:peliculas_app/widgets/card_widget.dart';
import 'package:peliculas_app/widgets/listviewh_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Peliculas',
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            CardWidget(),
            ListViewH(),
            ListViewH(),
            ListViewH(),
            ListViewH(),
          ],
        ),
      ),
    );
  }
}
