import 'package:flutter/material.dart';
import 'package:widgets/pages/alert_page.dart';
import 'package:widgets/pages/animated_container_page.dart';
import 'package:widgets/pages/avatar_page.dart';
import 'package:widgets/pages/card_page.dart';
import 'package:widgets/pages/home_page.dart';
import 'package:widgets/pages/inputs_page.dart';
import 'package:widgets/pages/list_view_page.dart';
import 'package:widgets/pages/slider_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'list': (BuildContext context) => ListViewPage(),
  };
}
