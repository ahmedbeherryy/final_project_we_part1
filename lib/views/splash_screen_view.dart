// import 'package:bookly/Features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

import '../widget/splash_view_body.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
