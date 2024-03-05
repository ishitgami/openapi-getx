import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openapi_getx/presentation/controllers/pet/pet_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: GetBuilder<PetController>(
        builder: (petController) {
          return petController.petList.isEmpty ? const Center(child: CircularProgressIndicator()) :
           ListView.builder(
            itemCount: petController.petList.length,
            itemBuilder: (context,index) {
              return Card(
                child: ListTile(
                  title: Text(petController.petList[index].name),
                  subtitle: Text(petController.petList[index].category?.name ?? ''),
                ),
              );
            },
          );
        }
      ),
    );
  }
}