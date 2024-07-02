import 'package:flutter/material.dart';
import 'package:health_fitness_app/widgets/book_now_button.dart';

class InfoCard5 extends StatelessWidget {
  const InfoCard5({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: ConstrainedBox(
          constraints: const BoxConstraints(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.17,
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
                        'Consult Dietitians',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text('Expert nutrition guidance \n& personalized plans',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                      SizedBox(
                        height: 8,
                      ),
                      BookNowButton(),
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
                const SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ClipRRect(
                    child: Transform.scale(
                        scale: 1.0,
                        child: Image.asset('assets/images/image 10.png')),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
