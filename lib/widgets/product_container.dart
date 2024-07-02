import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer(
      {super.key,
        required this.backgroundColor,
        required this.imageUrl,
        required this.titleText, required this.textColor});

  final Color backgroundColor;
  final String imageUrl;
  final String titleText;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.145,
        padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: backgroundColor),
        child: Stack(
          children: [
            Text(titleText, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12, color: textColor),),
            Positioned(
              bottom: 0,
              right: 0,

              child: ClipRRect(
                  borderRadius: const BorderRadius.only(bottomRight: Radius.circular(16), ),
                  child: Image(
                    height: 100,
                      image: AssetImage(imageUrl))),
            ),
          ],
        ),
      ),
    );
  }
}
