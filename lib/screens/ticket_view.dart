import 'package:example/utils/app_layout.dart';
import 'package:example/utils/app_styles.dart';
import 'package:example/widgets/column_layout.dart';
import 'package:example/widgets/layout_builder_widget.dart';
import 'package:example/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.8,
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 166 : 169),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: isColor == null ? Styles.ticketColor1 : Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(21)),
                      topRight: Radius.circular(AppLayout.getHeight(21)))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "${ticket['from']['code']}",
                        style: isColor == null
                            ? Styles.headlineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headlineStyle3
                                .copyWith(color: Colors.black),
                      ),
                      const Spacer(),
                      const ThickContainer(
                        isColor: true,
                      ),
                      Expanded(
                          child: Stack(children: [
                        SizedBox(
                          height: AppLayout.getHeight(24),
                          child: const AppLayoutBuilderWidget(sections: 6,),
                        ),
                        Center(
                            child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.airplanemode_active_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : const Color(0xff8accf7),
                                ))),
                      ])),
                      const ThickContainer(isColor: true),
                      const Spacer(),
                      Text("${ticket['to']['code']}",
                          style: isColor == null
                              ? Styles.headlineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headlineStyle3
                                  .copyWith(color: Colors.black)),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          "${ticket['from']['name']}",
                          style: isColor == null
                              ? Styles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headlineStyle4,
                        ),
                      ),
                      Text(
                        "${ticket['flying-time']}",
                        style: isColor == null
                            ? Styles.headlineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headlineStyle3
                                .copyWith(color: Colors.black),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          "${ticket['to']['name']}",
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? Styles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headlineStyle4,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == null
                            ? Colors.grey.shade300
                            : Colors.white,
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                    width: 5,
                                    height: 1,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: isColor == null
                                            ? Colors.grey.shade300
                                            : Colors.white,
                                      ),
                                    ),
                                  )),
                        );
                      },
                    ),
                  )),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == null
                            ? Colors.grey.shade300
                            : Colors.white,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: isColor == null ? Styles.orangeColor : Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                      bottomRight: Radius.circular(isColor == null ? 21 : 0))),
              padding: const EdgeInsets.only(
                  left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                          firstText: ticket['date'],
                          secondText: "Date",
                          alignment: CrossAxisAlignment.start,),
                      AppColumnLayout(
                          firstText: ticket['departure-time'],
                          secondText: "Departure Time",
                          alignment: CrossAxisAlignment.center),

                      AppColumnLayout(
                          firstText: ticket['number'].toString(),
                          secondText: "Number",
                          alignment: CrossAxisAlignment.end,),

                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
