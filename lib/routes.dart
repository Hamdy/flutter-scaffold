import 'package:fitzone/pages/null.dart';
import 'package:flutter/material.dart';

const String nullRoute = "/null";

Map<String, Widget Function(dynamic context)> routes = {
    nullRoute: (context) => const NullPage()
};
