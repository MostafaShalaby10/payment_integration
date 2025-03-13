import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customText({
  required String text,
  required double size,
  required FontWeight weight,
  required Color color,
}) {
  return Text(
    text,
    style: TextStyle(color: color, fontSize: size.sp, fontWeight: weight),
  );
}

Widget customButton({
  required String text,
  required Function() onPressed,
  required Color color,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      backgroundColor: color,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    ),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: customText(
        text: text,
        size: 22.sp,
        weight: FontWeight.w500,
        color: Colors.black,
      ),
    ),
  );
}

PreferredSizeWidget customAppBar(context, {required String title}) {
  return AppBar(
    forceMaterialTransparency: true,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back),
    ),
    centerTitle: true,
    title: Text(
      title,
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
