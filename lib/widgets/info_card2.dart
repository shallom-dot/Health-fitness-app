import 'package:flutter/material.dart';

class InfoCard2 extends StatelessWidget {
  const InfoCard2({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ConstrainedBox(
        constraints: const BoxConstraints(),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.145,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFF2021cc),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(12, 20, 0, 0),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fitness Trainer',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                            'Empower Your Body,\nAchieve Your Goals',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                  ClipRect(
                    child: OverflowBox(
                      alignment: const Alignment(-12, -0.2),
                      maxWidth: MediaQuery.of(context).size.width,
                      maxHeight: MediaQuery.of(context).size.width,
                      child: Opacity(
                        opacity: 0.2,
                        child: Container(
                          width: 500,
                          height: 500,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xfffafafa),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Image(image: AssetImage('assets/images/image 10.png')),
          ],
        ),
      ),
    );
  }
}
