import 'package:flutter/material.dart';

class TrainersCard extends StatelessWidget {
  const TrainersCard(
      {super.key,
      required this.avatarUrl,
      required this.name,
      required this.progress,
      required this.backgroundUrl});

  final String avatarUrl;
  final String name;
  final double progress;
  final String backgroundUrl;

  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width * 0.41;
    double cardHeight = MediaQuery.of(context).size.height * 0.3;

    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        padding: const EdgeInsets.only(top: 24),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(24))),
        width: cardWidth,
        height: cardHeight,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            children: [
              Positioned.fill(
                child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(backgroundUrl),
                ),
              ),
              Positioned(
                top: 16,
                left: 16,
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    child: Image(
                      image: AssetImage(avatarUrl),
                      width: 32,
                      height: 32,
                    )),
              ),
              Positioned(
                bottom: 16,
                left: 16,
                child: Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: LinearProgressIndicator(
                  value: progress,
                  backgroundColor: Colors.white.withOpacity(0.6),
                  valueColor: AlwaysStoppedAnimation<Color>(
                    const Color(0xff0033EC).withOpacity(0.6),
                  ),
                  minHeight: 8,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
