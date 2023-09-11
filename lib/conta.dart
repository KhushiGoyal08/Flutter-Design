import 'package:flutter/material.dart';
class Containerr extends StatelessWidget {
  const Containerr({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width / 2.1,
      height: MediaQuery.sizeOf(context).height / 5.5,
      decoration: ShapeDecoration(
        image: const DecorationImage(
          image: AssetImage('images/img2.png'),
          fit: BoxFit.fill,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
          padding: EdgeInsets.all(12),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/img1.png'),
              ),
              Column(
                children: [
                  Text(
                    'Kaiya',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0.56,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '29/09/0001',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height / 30,
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 15,
          ),
          child: Text(
            '+ \$250',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              height: 0.56,
            ),
          ),
        )
      ]),
    );
  }
}
