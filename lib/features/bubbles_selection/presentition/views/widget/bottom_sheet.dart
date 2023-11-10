import 'package:bubbles_selection/core/utils/color.dart';
import 'package:flutter/material.dart';

class BottomSheetView extends StatelessWidget {
  const BottomSheetView({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            color: AppColors.kSecondColor,
            borderRadius: BorderRadius.circular(12.0)),
        child: MaterialButton(
          child: const Text(
            'NEXT',
            style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w800),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
