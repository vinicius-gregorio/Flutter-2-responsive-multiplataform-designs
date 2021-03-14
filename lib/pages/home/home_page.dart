import 'package:flutter/material.dart';
import 'package:responsive_test/config/breakpoints.dart';
import 'package:responsive_test/pages/home/components/appbar/mobile_appbar.dart';

import 'components/appbar/web_appbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        drawer: constraints.maxWidth < mobileBreakpoints ? Drawer() : null,
        appBar: constraints.maxWidth < mobileBreakpoints
            ? PreferredSize(
                child: MobileAppBar(), preferredSize: Size(double.infinity, 56))
            : PreferredSize(
                child: WebAppBar(), preferredSize: Size(double.infinity, 72)),
      );
    });
  }
}
