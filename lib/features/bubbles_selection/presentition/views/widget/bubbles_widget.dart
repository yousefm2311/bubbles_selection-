import 'package:bubbles_selection/core/utils/color.dart';
import 'package:bubbles_selection/features/bubbles_selection/data/models/model_bubbles.dart';
import 'package:flutter/material.dart';

class BubblesWidget extends StatelessWidget {
  const BubblesWidget(
      {super.key,
      required this.onTap,
      required this.modelBubbles,
      required this.isSelected});
  final Function()? onTap;
  final bool isSelected;
  final ModelBubbles modelBubbles;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: modelBubbles.top,
      left: modelBubbles.left,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: modelBubbles.width,
          height: modelBubbles.height,
          decoration: BoxDecoration(
              boxShadow: isSelected == true
                  ? [
                      BoxShadow(
                        color: modelBubbles.color,
                        blurRadius: 2,
                        blurStyle: BlurStyle.inner,
                        spreadRadius: 3.5,
                        offset: Offset.zero,
                      )
                    ]
                  : [],
              color: isSelected ? modelBubbles.color : AppColors.kPrimaryColor,
              borderRadius: BorderRadius.circular(100)),
          child: Center(
            child: Text(
              modelBubbles.text,
              style: const TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
