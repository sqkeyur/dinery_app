import 'package:flutter/material.dart';

class EmptyData extends StatelessWidget {
  final bool? showImage;
  final Widget? imageWidget;
  final double? imageHeight;
  final String? title;
  final String? subTitle;

  const EmptyData({
    super.key,
    this.showImage = true,
    this.imageWidget,
    this.title,
    this.subTitle,
    this.imageHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        if (showImage == true) ...[
          const SizedBox(height: 15.0),
          // imageWidget ??
          //     Lottie.asset(
          //       AppAssets.emptyDataJson,
          //       height: imageHeight ?? 200,
          //     ),
          const SizedBox(height: 15.0),
        ],
        Text(
          title ?? 'No Data Found.',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 15.0 / 2),
        Text(
          subTitle ?? 'There is no data a this moment.',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
