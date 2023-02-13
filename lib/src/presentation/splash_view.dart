import 'dart:async';

import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';
import 'package:soccer_know/src/config/router/app_router.dart';

import '../../../main.dart';

import '../core/theme/colors.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 1),
      () => router.replace(const SplashRoute()),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Test'),
        leading: InkWell(
            child: Icon(Icons.arrow_back_ios_new_outlined),
            onTap: () {
              router.pop();
              print('Pressed');
            }),
      ),
      body: const appBar(),
    );
  }
}

class appBar extends StatelessWidget {
  const appBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorTones.bgColor,
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(7.w),
          child: const Text(
            'Soccer Know',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
