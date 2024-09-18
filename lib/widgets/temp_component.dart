import 'package:flutter/material.dart';

class CustomDegreeAndLabel extends StatelessWidget {
  const CustomDegreeAndLabel(
      {super.key,
      required this.label,
      required this.temp,
      required this.labelSize,
      required this.degreeSize,
      required this.tempSize,
      required this.color});
  final String label;
  final int temp;
  final double labelSize;
  final double degreeSize;
  final double tempSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              temp.toString(),
              style: TextStyle(
                  fontSize: tempSize, fontFamily: 'suse', color: color),
            ),
            Text(
              '°',
              style: TextStyle(
                  fontSize: degreeSize, fontFamily: 'suse', color: color),
            ),
          ],
        ),
        Text(
          label,
          style: TextStyle(
              fontSize: labelSize, fontFamily: 'suse', color: Colors.white),
        ),
      ],
    );
  }
}
