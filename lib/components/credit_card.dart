import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 35, 66, 43),
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              image: AssetImage('lib/images/card-bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          height: 210,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.more_vert_sharp,
                    size: 16,
                    color: Colors.grey.shade300,
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '2304 3234 2424',
                    style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'DHL44100',
                    style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 36,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ferra Alexandra',
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Recipient',
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '21 Maryanarka St',
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Address',
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
