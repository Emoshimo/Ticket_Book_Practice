import 'package:example/utils/app_layout.dart';
import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
          color: const Color(0xfff4f6fd),
        ),
        child: Row(
          children: [
            Container(
              width: size.width * 0.44,
              padding:
              EdgeInsets.symmetric(vertical: AppLayout.getHeight(8)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(AppLayout.getHeight(50))),
                color: Colors.white,
              ),
              child: Center(child: Text(firstTab)),
            ),
            Container(
              width: size.width * 0.44,
              padding:
              EdgeInsets.symmetric(vertical: AppLayout.getHeight(8)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(AppLayout.getHeight(50))),
                color: Colors.transparent,
              ),
              child: Center(child: Text(secondTab)),
            ),
          ],
        ),
      ),
    );
  }
}
