import 'package:flutter/material.dart';
import 'package:memo/utils/utils.dart';
import 'package:gap/gap.dart';
import 'package:memo/widgets/display_white_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.15,
                width: deviceSize.width,
                color: colors.primary,
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DisplayWhiteText(
                          text: 'Aug 7, 2023',
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                      Gap(10),
                      DisplayWhiteText(text: 'Simple Memo', fontSize: 40),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
