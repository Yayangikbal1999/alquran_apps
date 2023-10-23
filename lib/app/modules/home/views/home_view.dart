import 'package:alquran_app/app/data/models/surah.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<Surah>>(
        future: controller.getSurah(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(
                child: Text("${index + 1}"),
              ),
              title: const Text("surah Al - ....."),
              subtitle: const Text("7 ayat | mekah"),
              trailing: const Text("tulisan arab"),
            ),
          );
        },
      ),
    );
  }
}
