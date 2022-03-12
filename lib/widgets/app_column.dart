import 'package:flutter/material.dart';
import '../color/AppColor.dart';
import '../dimension/dimension.dart';
import 'big_text.dart';
import 'icon_and_text_widgets.dart';
import 'small_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Wrap(
                children: List.generate(
                    5,
                    (index) => Icon(Icons.star,
                        color: AppColors.mainColor, size: 15))),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "4.5"),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "1287"),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "Commets"),
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidgets(
              icon: Icons.circle_sharp,
              text: "normal",
              iconColor: AppColors.iconColor1,
            ),
            IconAndTextWidgets(
              icon: Icons.location_on,
              text: "1.7 km",
              iconColor: AppColors.mainColor,
            ),
            IconAndTextWidgets(
              icon: Icons.access_time_rounded,
              text: "3.2 min",
              iconColor: AppColors.iconColor2,
            )
          ],
        )
      ],
    );
  }
}
