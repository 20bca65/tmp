import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  final String image;
  final String userId;
  const SingleProduct({
    Key? key,
    required this.image,
    required this.userId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black12,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: Container(
          width: 180,
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network(
                image,
                fit: BoxFit.fitHeight,
                width: 180,
              ),
              Text(userId == '' ? '' : 'Client Id: $userId'),
            ],
          ),
        ),
      ),
    );
  }
}
