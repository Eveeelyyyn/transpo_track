import 'package:flutter/material.dart';
import 'package:transpo_track/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:transpo_track/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:transpo_track/utils/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key, required this.child, this.height = 350,
  });

  final Widget child;
  final double height;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
        child: Container(
          color: TColors.primary,
          padding: const EdgeInsets.all(0),
          
          child: SizedBox(
            height: height,
            child: Stack(
              children: [
                Positioned(top: -150, right:150, child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1))),
                //Positioned(top: 100, right:-300, child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1))),
                child
              ],
            ),
          ),
        ),
      );
  }
}