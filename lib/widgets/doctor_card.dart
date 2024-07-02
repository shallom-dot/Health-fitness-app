import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key, required this.specialistsName, required this.rating, required this.yearsInPractice, required this.imageUrl});

  final String specialistsName;
  final String rating;
  final int yearsInPractice;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width * 0.48;
    double cardHeight = MediaQuery.of(context).size.height * 0.15;

    return SizedBox(
      height: cardHeight,
      width: cardWidth,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(
            color: Colors.grey.withOpacity(0.2),
            width: 1,
          ),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: cardHeight,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12)),
                    color: Color(0xffe7eaed),
                  ),
                ),
                ClipRRect(
                  child: SizedBox(
                    width: cardWidth,
                    height: cardHeight,
                    child: Align(
                      alignment: const Alignment(0, 6),
                      child: Transform.scale(
                          scale: 1.5,
                          child: Image.asset(imageUrl)),
                    ),
                  ),
                ),
                const Positioned(
                  top: 12,
                  right: 12,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        specialistsName,
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: const Color(0xff1e8841)),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star,
                              size: 12,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Text(
                              rating,
                              style:
                                  const TextStyle(fontSize: 10, color: Colors.white, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Text(
                    'MBBS, ${yearsInPractice}years',
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: Color(0xff979797)),
                  ),
                  const SizedBox(height: 24,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '\$1000',
                        style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xff1647ee)),
                      ),
                      GestureDetector(
                        onTap: () {

                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: const Color(0xfff16038)),
                          child:
                              const Text(
                                'Book Now',
                                style:
                                TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w500),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
