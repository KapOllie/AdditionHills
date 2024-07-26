import 'package:flutter/material.dart';

class RoundContainer extends StatelessWidget {
  const RoundContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
            flex: 1,
            child: SizedBox(
              height: 10,
            )),
        Expanded(
            flex: 8,
            child: Container(
              decoration: const BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24))),
            ))
      ],
    );
  }
}
