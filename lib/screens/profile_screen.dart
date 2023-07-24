import 'package:example/utils/app_layout.dart';
import 'package:example/utils/app_styles.dart';
import 'package:example/widgets/column_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(30),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: AppLayout.getWidth(86),
                height: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/logo.png"))),
              ),
              Gap(AppLayout.getWidth(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: Styles.headlineStyle1,
                  ),
                  Gap(AppLayout.getWidth(5)),
                  Text("New-York",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500,
                      )),
                  Gap(AppLayout.getWidth(10)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(100)),
                      color: const Color(0xfffef4f3),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidth(3),
                        vertical: AppLayout.getHeight(3)),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xff526799),
                          ),
                          child: const Icon(
                            Icons.shield_sharp,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        const Text(
                          "Premium status",
                          style: TextStyle(
                            color: Color(0xff526799),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Gap(AppLayout.getHeight(5)),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print("You are tapped");
                    },
                    child: Text(
                      "Edit",
                      style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(10)),
          Divider(
            color: Colors.grey.shade500,
          ),
          Gap(AppLayout.getHeight(10)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                ),
              ),
              Positioned(
                left: AppLayout.getWidth(285),
                bottom: AppLayout.getHeight(35),
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: AppLayout.getHeight(18),
                          color: const Color(0xff264cd2))),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(25),
                    vertical: AppLayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.tips_and_updates_rounded,
                        color: Styles.primaryColor,
                        size: 30,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You got a new reward!",
                          style: Styles.headlineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "You have 95 flights in a year!",
                          style: Styles.headlineStyle2.copyWith(
                              color: Colors.white.withOpacity(0.9),
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text(
            "Accumulated Miles",
            style: Styles.headlineStyle2,
          ),
          Gap(AppLayout.getHeight(10)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(10),),
              color: Styles.bgColor,
              boxShadow: [BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 2,
                spreadRadius: 2
              )]
            ),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(15)),
                Text(
                  "189245",
                  style: TextStyle(
                      fontSize: 45,
                      color: Styles.textColor,
                      fontWeight: FontWeight.w600),
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles accrued", style: Styles.headlineStyle4.copyWith(fontSize: 16),),
                    Text("24 July 2023", style: Styles.headlineStyle4.copyWith(fontSize: 16),),
                  ],
                ),
                Gap(AppLayout.getHeight(10)),
                Divider(color: Colors.grey.shade300,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "23 042", secondText: "Miles", alignment: CrossAxisAlignment.start, isColor: true,),
                    AppColumnLayout(firstText: "Airline CO", secondText: "Received from", alignment: CrossAxisAlignment.end, isColor: true,),
                  ],
                ),
                Gap(AppLayout.getHeight(8)),
                Divider(color: Colors.grey.shade300,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "24", secondText: "Miles", alignment: CrossAxisAlignment.start, isColor: true,),
                    AppColumnLayout(firstText: "Turkish Airline", secondText: "Received from", alignment: CrossAxisAlignment.end, isColor: true,),
                  ],
                ),
                Gap(AppLayout.getHeight(8)),
                Divider(color: Colors.grey.shade300,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "52 340", secondText: "Miles", alignment: CrossAxisAlignment.start, isColor: true,),
                    AppColumnLayout(firstText: "Pegasus Airlines", secondText: "Received from", alignment: CrossAxisAlignment.end, isColor: true,),

                  ],
                )
              ],
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          Center(child: Text("How to get more miles?", style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w500),))
        ],
      ),
    );
  }
}
