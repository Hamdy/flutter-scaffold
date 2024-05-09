import 'package:fitzone/utils.dart';
import 'package:flutter/material.dart';

SizedBox addVerticalSpace(BuildContext context, double space) {
  return SizedBox(height: vertical(context, space));
}

SizedBox addHorizontalSpace(BuildContext context, double space) {
  return SizedBox(width: horizontal(context, space));
}
