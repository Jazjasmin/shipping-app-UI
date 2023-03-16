import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/scaffold/scaffold_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class Statement extends StatelessWidget {
  const Statement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldScreen(
      backgroundColor: custom_white, 
      appbarTitle: 'Statement', 
      widget: SafeArea(
        child: Column(
          children: const [
        walletDatePicker(),
        Expanded(
          child: WalletStatement()
        )
       
      ],))
        
    );
  }
}

class walletDatePicker extends StatefulWidget {
  const walletDatePicker({
    Key? key,
  }) : super(key: key);

  @override
  State<walletDatePicker> createState() => _walletDatePickerState();
}

class _walletDatePickerState extends State<walletDatePicker> {
  // DateTime? _selectedDateFrom;
  // DateTime? _selectedDateTo;
  DateTime selectedDate = DateTime.now();
  DateTime selectedDateTo = DateTime.now();
  //var formatter =  DateFormat('yyyy-MM-dd');
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      color: const Color.fromARGB(255, 245, 249, 252),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("From"),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 45,
              child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: InkWell(
                        onTap: () async {
                          // final selectedDateTemp = await showDatePicker(
                          //   context: context,
                          //   initialDate: DateTime.now(),
                          //   firstDate: DateTime.now()
                          //       .subtract(const Duration(days: 365)),
                          //   lastDate: DateTime.now(),
                          // );
                          // if (selectedDateTemp == null) {
                          //   return;
                          // } else {
                          //   //print(selectedDateTemp.toString());
                          //   setState(() {
                          //     _selectedDateFrom = selectedDateTemp;
                          //   });
                          // }
                          //  controller.selectDate(context);
                          //       controller.update();
                        },
                        child: const Icon(
                          Icons.calendar_month,
                          color: Colors.black,
                        ),
                      ),
                      hintText: //controller.selectedDate == null
                           'Select Date',
                          //: '${controller.selectedDate.day.toString()}-${controller.selectedDate.month.toString()}-${controller.selectedDate.year.toString()}',
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ))),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("To"),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 45,
              child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: InkWell(
                        onTap: () async {
                          // final selectedDateTemp = await showDatePicker(
                          //   context: context,
                          //   initialDate: DateTime.now(),
                          //   firstDate: DateTime.now()
                          //       .subtract(const Duration(days: 365)),
                          //   lastDate: DateTime.now(),
                          // );
                          // if (selectedDateTemp == null) {
                          //   return;
                          // } else {
                          //   //print(selectedDateTemp.toString());
                          //   setState(() {
                          //     _selectedDateTo = selectedDateTemp;
                          //   });
                          // }
                          //  controller.selectDateTo(context);
                          //       controller.update();
                        },
                        child: const Icon(
                          Icons.calendar_month,
                          color: Colors.black,
                        ),
                      ),
                      hintText: //controller.selectedDateTo == null
                           'Select Date',
                          //: '${controller.selectedDateTo.day.toString()}-${controller.selectedDateTo.month.toString()}-${controller.selectedDateTo.year.toString()}',
            
                      //style: TextStyle(color: Colors.grey),

                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ))),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: SizedBox(
                height: 50,
                width: 250,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: custom_orange,
                      disabledBackgroundColor:
                          const Color.fromARGB(255, 55, 97, 59),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  onPressed: () async {
                  //   userdata.write("from_date","");
                  //   userdata.write("to_date","");
                  //       final difference = controller.selectedDateTo.difference(controller.selectedDate).inDays;
                  //           //print("difference: $difference");
                  //  if(difference <=31 && difference.isNegative == false) {
                  //             controller.selectedDate.month < 10 &&
                  //                 controller.selectedDate.day < 10
                  //                 ? userdata.write("from_date",
                  //                 "${controller.selectedDate
                  //                     .year}-0${controller.selectedDate
                  //                     .month}-0${controller.selectedDate
                  //                     .day}")
                  //                 : controller.selectedDate.day < 10 &&
                  //                 controller.selectedDate.month >= 10
                  //                 ? userdata.write("from_date",
                  //                 "${controller.selectedDate
                  //                     .year}-${controller.selectedDate
                  //                     .month}-0${controller.selectedDate
                  //                     .day}")
                  //                 : controller.selectedDate.month < 10 &&
                  //                 controller.selectedDate.day >= 10
                  //                 ? userdata.write("from_date",
                  //                 "${controller.selectedDate
                  //                     .year}-0${controller.selectedDate
                  //                     .month}-${controller.selectedDate
                  //                     .day}")
                  //                 : userdata.write("from_date",
                  //                 "${controller.selectedDate
                  //                     .year}-${controller.selectedDate
                  //                     .month}-${controller.selectedDate
                  //                     .day}");

                  //             controller.selectedDateTo.day <
                  //                 10 &&
                  //                 controller.selectedDateTo.month < 10
                  //                 ? userdata.write("to_date",
                  //                 "${controller.selectedDateTo
                  //                     .year}-0${controller
                  //                     .selectedDateTo
                  //                     .month}-0${controller
                  //                     .selectedDateTo.day}")
                  //                 : controller.selectedDateTo.day < 10 &&
                  //                 controller.selectedDateTo.month >= 10
                  //                 ? userdata.write("to_date",
                  //                 "${controller.selectedDateTo
                  //                     .year}-${controller.selectedDateTo
                  //                     .month}-0${controller
                  //                     .selectedDateTo.day}")
                  //                 : controller.selectedDateTo.month < 10 &&
                  //                 controller.selectedDateTo.day >= 10
                  //                 ? userdata.write("to_date",
                  //                 "${controller.selectedDateTo
                  //                     .year}-0${controller
                  //                     .selectedDateTo
                  //                     .month}-${controller
                  //                     .selectedDateTo.day}")
                  //                 : userdata.write("to_date",
                  //                 "${controller.selectedDateTo
                  //                     .year}-${controller.selectedDateTo
                  //                     .month}-${controller
                  //                     .selectedDateTo.day}");

                  //             await controller.apiWalletLog();

                  //           }else if(difference.isNegative == true){
                  //             Fluttertoast.showToast(
                  //               msg: "Please select valid date range",
                  //               toastLength: Toast.LENGTH_LONG,
                  //               gravity: ToastGravity.BOTTOM,
                  //               timeInSecForIosWeb: 1,
                  //               backgroundColor: Colors.red,
                  //               textColor: Colors.white,
                  //               fontSize: 16.sp,
                  //             );
                  //            }else if(difference>31){
                  //             Fluttertoast.showToast(
                  //               msg: "Maximum one month report can be viewed.",
                  //               toastLength: Toast.LENGTH_LONG,
                  //               gravity: ToastGravity.BOTTOM,
                  //               timeInSecForIosWeb: 1,
                  //               backgroundColor: Colors.red,
                  //               textColor: Colors.white,
                  //               fontSize: 16.sp,
                  //             );
                           // }

                  },
                  child: Text(
                    "Submit",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WalletStatement extends StatelessWidget {
  const WalletStatement({super.key});

  @override
  Widget build(BuildContext context) {
    return Visibility(
                     // visible: controller.walletLogModel.walletLog!.isNotEmpty,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(children: [
                        Row(
                          
                          children: [
                            Container(
                              width: 160,
                              height: 75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: custom_orange,
                                )
                                
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:40.0,top:10),
                                    child: Center(
                                      child: Row(
                                        children: [
                                          // const Icon(Icons.currency_rupee,
                                          // color: Color(0xFF59597C),
                                          // size: 20 ,),
                                          Text("OMR 300",
                                           // controller.walletLogModel.totalCredit.toString(),
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.roboto(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xFF59597C)
                                      ),)
                                        ],
                                      ),
                                    ),
                                  ),
                                   const SizedBox(height: 5,),
                                  Text("Total Credit",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.mulish(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF474747)
                                  ),)
                                ],
                                
                              )
                            ),
                            const SizedBox(width: 5,),
                            Container(
                               width: 160,
                              height: 75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: custom_orange,
                                )
                                
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:40.0,top:10),
                                    child: Center(
                                      child: Row(
                                        children: [
                                          // const Icon(Icons.currency_rupee,
                                          // color: Color(0xFF59597C),
                                          // size: 20 ,),
                                          Text("OMR 400",
                                            //controller.walletLogModel.totalDebit.toString(),
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.roboto(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xFF59597C)
                                      ),)
                                        ],
                                      ),
                                    ),
                                  ),
                                   const SizedBox(height: 5,),
                                  Text("Total Debit",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.mulish(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF474747)
                                  ),)
                                ],
                                
                              )
                            )
                          ],
                        ),
                        const SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 36,
                                width: 83.w,
                                color: custom_blue,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Time",
                                    style: GoogleFonts.mulish(
                                      color: const Color(0xFFFFFFFF),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 36,
                                width: 83,
                                color: custom_blue,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Type",
                                    style: GoogleFonts.mulish(
                                      color: const Color(0xFFFFFFFF),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 36,
                                width: 80,
                                color: custom_blue,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Status",
                                    style: GoogleFonts.mulish(
                                      color: const Color(0xFFFFFFFF),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 36,
                                width: 85,
                                color: custom_blue,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Amount",
                                    style: GoogleFonts.mulish(
                                      color: const Color(0xFFFFFFFF),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5,),
                          Expanded(
                              child: ListView.separated(
                            shrinkWrap: true,
                            addRepaintBoundaries: true,
                            itemBuilder: (context, index) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 85.w,
                                    // padding:
                                    //     EdgeInsets.symmetric(horizontal: 6.w),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left:5.0),
                                      child: Text("01.30",
                                        //"${controller.walletLogModel.walletLog![index].date}",
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.mulish(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xff626262),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 85.w,
                                    // padding:
                                    //     EdgeInsets.symmetric(horizontal: 6.w),
                                    child: Text(
                                      // controller.walletLogModel.walletLog![index].wlogType
                                      //             .toString() ==
                                      //         "0"
                                      //     ? "Expense"
                                           "Income",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.mulish(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff626262),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 80.w,
                                    // padding:
                                    //     EdgeInsets.symmetric(horizontal: 6.w),
                                    child: Text(
                                      // controller.walletLogModel.walletLog![index].wlogType
                                      //             .toString() ==
                                      //         "0"
                                      //     ? "Debit"
                                         "Credit",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.mulish(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: 
                                        // controller
                                        //             .walletLog[index].wlogType
                                        //             .toString() ==
                                        //         "0"
                                        //     ? const Color(0xffED7D2B)
                                             const Color(0xff3FA54A),
                                      ),
                  
                                      // "${controller.walletLog[index].wlogType}",
                                    ),
                                  ),
                                  // const SizedBox(
                                  //   width: 5,
                                  // ),
                                  Container(
                                    width: 80.w,
                                    // padding:
                                    //     EdgeInsets.symmetric(horizontal: 6.w),
                                    child: Text(
                                         "OMR 70",
                                         textAlign: TextAlign.left,
                                         style: GoogleFonts.mulish(
                                             color:
                                                 const Color(0xFF59597C),
                                             fontSize: 15,
                                             fontWeight: FontWeight.w500),
                                       ),
                                  ),
                                  
                                ],
                              );
                            },
                            itemCount: 5,// controller.walletLogModel.walletLog!.length,
                            separatorBuilder: ((context, index) => Divider(
                                  color: const Color(0xff8A8A8A),
                                  height: 16.h,
                                )),
                          ))
                        ]),
                    ),
                  );
  }
}
 