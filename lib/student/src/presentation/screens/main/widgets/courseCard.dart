import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String name;
  final int time_triner;
  final String path;
  final String spaczaltion;
  final int parce;
  final int evaluation;

  CourseCard(
      {required this.name,
      required this.time_triner,
      required this.path,
      required this.spaczaltion,
      required this.parce,
      required this.evaluation});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFFFFFF),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: LayoutBuilder(
              builder: (context, constraints) {
                double parentWidth = constraints.maxWidth;
                double availableHeight = 150;

                return Container(
                  height: availableHeight,
                  child: Row(
                    children: [
                      Container(
                        width: parentWidth * 0.50,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ),
                          image: DecorationImage(
                            image: AssetImage('${this.path}'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: parentWidth * 0.50,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 17, top: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 20),
                                  Text(
                                    '${this.spaczaltion}',
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '${this.name}',
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    '${this.time_triner}ساعات تدريبية',
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 0),
                            Container(
                              width: parentWidth * 0.5,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    width: parentWidth * 0.5 * 0.50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: List.generate(
                                        5,
                                        (index) => Icon(
                                          Icons.star,
                                          color: const Color(0xFFDFB547),
                                          size: parentWidth * 0.5 * 0.50 * 0.2,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: parentWidth * 0.5 * 0.30,
                                    height: 40,
                                    child: FloatingActionButton(
                                      onPressed: () {},
                                      backgroundColor: const Color(0xFFDFB547),
                                      shape: const CircleBorder(),
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                color: Color(0xFF588760),
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              decoration: const BoxDecoration(
                color: Color(0xFFDFB547),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5),
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(0),
                ),
              ),
              child: Text(
                '${this.parce}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
