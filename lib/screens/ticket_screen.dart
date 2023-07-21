import 'package:barcode_widget/barcode_widget.dart';
import 'package:example/screens/ticket_view.dart';
import 'package:example/utils/app_info_list.dart';
import 'package:example/utils/app_layout.dart';
import 'package:example/utils/app_styles.dart';
import 'package:example/widgets/column_layout.dart';
import 'package:example/widgets/layout_builder_widget.dart';
import 'package:example/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Tickets",
                style: Styles.headlineStyle1.copyWith(fontSize: 32),
              ),
              Gap(AppLayout.getHeight(20)),
              const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getWidth(15)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(15),
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getWidth(20)),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: "Flutter DB",
                          secondText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnLayout(
                          firstText: "52221 17598",
                          secondText: "passport",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderWidget(sections: 15, isColor: true, width: 5,),
                    Gap(AppLayout.getHeight(20)),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: "0055 22134213",
                          secondText: "Number of E-ticket",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnLayout(
                          firstText: "B2GHJL",
                          secondText: "Booking Code",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilderWidget(sections: 15, isColor: true, width: 5,),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/v.png", scale: 18,),
                                Text(" *** 2462 ", style: Styles.headlineStyle3,)
                              ],
                            ),
                            Gap(5),
                            Text("Payment Method", style: Styles.headlineStyle4,),
                          ],
                        ),
                        const AppColumnLayout(
                          firstText: "\$249.00",
                          secondText: "Price",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ]
                      ,
                    ),
                    const SizedBox(height: 1,),
                    Gap(AppLayout.getHeight(20)),

                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15), vertical: AppLayout.getHeight(15)),
                margin: EdgeInsets.only(left: AppLayout.getWidth(15), right: AppLayout.getWidth(15) ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(AppLayout.getHeight(21)),
                    bottomLeft: Radius.circular(AppLayout.getWidth(21))
                  )
                ),
                child: ClipRRect(
                  borderRadius:BorderRadius.circular(AppLayout.getHeight(15)) ,
                  child: BarcodeWidget(data: "https://github.com/Emoshimo",
                      barcode: Barcode.code128(),
                  drawText: false,
                  width: double.infinity,
                  color: Styles.textColor,
                  height: AppLayout.getHeight(70),),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              TicketView(ticket: ticketList[0])
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(19),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(19),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
