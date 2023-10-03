import 'package:flutter/material.dart';

import 'package:e_commerce/src/utils/constants/colors.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final Size sizeScreen = MediaQuery.of(context).size;
    const urlImg =
        'https://plus.unsplash.com/premium_photo-1676999260189-5412ac9aeb04?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=4613&q=80';

    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                ),
                child: Image.network(
                  urlImg,
                  width: sizeScreen.width * 0.85,
                  height: 470,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 149,
              left: 25,
              child: Container(
                width: 65,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DetailCircle(
                      backgroundColor: Colors.white,
                      borderColor: Colors.grey,
                    ),
                    DetailCircle(
                      backgroundColor: backgroundCircle2,
                      borderColor: colorBorder,
                    ),
                    DetailCircle(
                      backgroundColor: backgroundCircle3,
                      borderColor: colorBorder,
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}

class DetailCircle extends StatelessWidget {
  final Color backgroundColor;
  final Color borderColor;

  const DetailCircle({
    super.key,
    required this.backgroundColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: borderColor, width: 7),
      ),
    );
  }
}
