import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AppButton extends StatelessWidget {
  final String title;
  final double? width;
  final IconData? icon;
  final String? image;
  final double? height;
  final double? fontSize;
  final Widget? child;
  final bool? disableButton;
  final VoidCallback onPressed;
  final VoidCallback? onLongPress;

  const AppButton({
    super.key,
    required this.title,
    this.width,
    this.icon,
    this.image,
    this.height,
    this.fontSize,
    this.child,
    this.disableButton,
    required this.onPressed,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 367,
      height: height ?? 54,
      child: ElevatedButton(
        onPressed: disableButton == true ? null : onPressed,
        onLongPress: disableButton == true ? null : onLongPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: child ??
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null) ...[
                  Icon(
                    icon,
                    color: Colors.white,
                    size: 24,
                  ),
                  const SizedBox(width: 5),
                ] else
                  const SizedBox(),
                if (image != null && image != "") ...[
                  image!.contains(".svg")
                      ? SvgPicture.asset(
                          image!,
                          height: 22,
                          color: Colors.white,
                          alignment: Alignment.bottomLeft,
                        )
                      : Image.asset(
                          image!,
                          height: 22,
                          color: Colors.white,
                          alignment: Alignment.bottomLeft,
                        ),
                  const SizedBox(width: 5)
                ] else
                  const SizedBox(),
                if (title != "")
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: fontSize ?? (Get.width > 550 ? 25 : 20),
                      fontWeight: FontWeight.w700,
                    ),
                  )
                else
                  const SizedBox(),
              ],
            ),
      ),
    );
  }
}
