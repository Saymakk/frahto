import 'package:flutter/material.dart';
import 'package:frahto/constants/constants.dart';
import 'package:frahto/ui/widgets/widgets.dart';

class COScreen extends StatefulWidget {
  const COScreen({Key? key}) : super(key: key);

  @override
  State<COScreen> createState() => _COScreenState();
}

class _COScreenState extends State<COScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SWidgets().orderExample(
                context,
                'from',
                'to',
                'full_address_from',
                'full_address_to',
                'order_status',
                'order_number',
                'upload_type',
                'upload_date',
                'upload_time',
                'price',
              )
              // Container(
              //   width: MediaQuery.of(context).size.width,
              //   decoration: BoxDecoration(
              //       color: Style.inactiveGreyBG,
              //       borderRadius: BorderRadius.circular(8)),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Row(
              //         children: [
              //           Container(
              //             margin: EdgeInsets.symmetric(
              //               horizontal: 16,
              //               vertical: 8,
              //             ),
              //             child: Row(
              //               children: [
              //                 Text(
              //                   'Астана',
              //                   style: Style().textStyle(
              //                     14,
              //                     FontWeight.w500,
              //                     Style.mainBlack,
              //                   ),
              //                 ),
              //                 Text(
              //                   ' -> ',
              //                   style: Style().textStyle(
              //                     14,
              //                     FontWeight.w500,
              //                     Style.mainBlack,
              //                   ),
              //                 ),
              //                 Text(
              //                   'Алматы',
              //                   style: Style().textStyle(
              //                     14,
              //                     FontWeight.w500,
              //                     Style.mainBlack,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //           Expanded(child: SizedBox()),
              //           Container(
              //             margin: EdgeInsets.symmetric(
              //               horizontal: 16,
              //               vertical: 8,
              //             ),
              //             decoration: BoxDecoration(color: Style.mainPurple, borderRadius: BorderRadius.circular(48)),
              //             child: TextButton(
              //               onPressed: () {},
              //               child: Text(
              //                 'Подробнее',
              //                 style: Style().textStyle(
              //                   16,
              //                   FontWeight.w500,
              //                   Colors.white,
              //                 ),
              //               ),
              //             ),
              //           )
              //         ],
              //       ),
              //       Container(
              //         margin: EdgeInsets.only(bottom: 12, left: 16),
              //         child: Text(
              //           '#131313',
              //           style: Style().textStyle(
              //             14,
              //             FontWeight.w400,
              //             Style.inactiveGreyText,
              //           ),
              //         ),
              //       )
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
