import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:openapi_getx/comman/constant.dart';
import 'package:openapi_getx/comman/enum.dart';
import 'package:openapi_getx/presentation/controllers/pet/pet_controller.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<PetController>(builder: (petController) {
        return petController.petList.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  'Pet Store',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.green),
                                ),
                              ),
                            ],
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.red[100],
                            child: const Text('I'),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.all(SPACE4),
                        padding: const EdgeInsets.all(SPACE8),
                        decoration: BoxDecoration(
                            color: Colors.amber[100],
                            borderRadius: BorderRadius.circular(RADIUS)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:
                              petController.inventory.entries.map((entry) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    entry.key.toUpperCase(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(entry.value.toString()),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(SPACE4),
                        padding: const EdgeInsets.all(SPACE8),
                        decoration: BoxDecoration(
                            color: Colors.amber[100],
                            borderRadius: BorderRadius.circular(RADIUS)),
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              StatusContainer(status: Status.available),
                              StatusContainer(status: Status.pending),
                              StatusContainer(status: Status.sold),
                            ]),
                      ),
                      Expanded(
                        child: MasonryGridView.count(
                          itemCount: petController.petList.length,
                          crossAxisCount: 3,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.green.withOpacity(0.3)),
                                  borderRadius: BorderRadius.circular(RADIUS)),
                              child: Column(
                                children: [
                                  ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(RADIUS),
                                          topRight: Radius.circular(RADIUS)),
                                      child: Image.network(
                                        'https://placedog.net/640/4${index * 2}0?r',
                                        fit: BoxFit.cover,
                                      )),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color(
                                                (math.Random().nextDouble() *
                                                        0xFFFFFF)
                                                    .toInt())
                                            .withOpacity(0.1),
                                        borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(RADIUS),
                                            bottomRight:
                                                Radius.circular(RADIUS))),
                                    width: double.infinity,
                                    child: Column(
                                      children: [
                                        Text(petController.petList[index].name,
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 12)),
                                        Text(
                                          petController.petList[index].category
                                                  ?.name ??
                                              '',
                                          style: const TextStyle(
                                              color: Colors.black87,
                                              fontSize: 10),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
        //  ListView.builder(
        //   itemCount: petController.petList.length,
        //   itemBuilder: (context,index) {
        //     return Card(
        //       child: ListTile(
        //         title: Text(petController.petList[index].name),
        //         subtitle: Text(petController.petList[index].category?.name ?? ''),
        //       ),
        //     );
        //   },
        // );
      }),
    );
  }
}

class StatusContainer extends StatelessWidget {
  const StatusContainer({
    required this.status,
    super.key,
  });

  final Status status;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PetController>(builder: (petController) {
      return GestureDetector(
        onTap: () {
          petController.changeStatus(status);
        },
        child: Container(
          padding:
              const EdgeInsets.symmetric(horizontal: SPACE12, vertical: SPACE4),
          decoration: BoxDecoration(
              color: petController.selectedStatus == status
                  ? Colors.green[400]
                  : null,
              borderRadius: BorderRadius.circular(RADIUS)),
          child: Text(
            status.name.toString().capitalize!,
            style: TextStyle(
                color: petController.selectedStatus == status
                    ? Colors.white
                    : Colors.black),
          ),
        ),
      );
    });
  }
}
