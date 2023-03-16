import 'package:alfarha_cargo_app/wallet/expense/view/all_expense.dart';
import 'package:alfarha_cargo_app/constant_widgets/scaffold/scaffold_screen.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant_widgets/colors/custom_colors.dart';

class Expense extends StatelessWidget {
   Expense({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return ScaffoldScreen(
      backgroundColor: Colors.white,
      appbarTitle: 'Expense',
      widget: SafeArea(
        child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top:18.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                                  horizontal: 8.w, vertical: 8.h)
                              .copyWith(bottom: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      fieldName("Allowance"),
                                      SizedBox(height: 5.h),
                                      Container(
                                          height: 46.h,
                                          width: 170.w,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                              color: const Color(0xffB8D0D6),
                                              width: 1.sp,
                                            ),
                                            color: const Color(0xffF8FBFF),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 11.w),
                                          child: DropdownButton2<dynamic>(
                                            underline: Container(),
                                            icon: const Icon(
                                              Icons.keyboard_arrow_down_outlined,
                                              color: Color(0xff7EA4AD),
                                            ),
                                            iconEnabledColor: Colors.white,
                                            // onChanged: (value) {
                                            //   controller.allowanceDropDown =
                                            //       value;
                                            //   controller.apiSubAllowanceList(value);
                                            //   controller.update();
                                            // },
                                            isExpanded: true,
                                            barrierLabel: 'T.A',
                                            //value: controller.allowanceDropDown,
                                            items: []
                                            // controller.allowanceModel.data!.map<DropdownMenuItem>((value) {
                                            //   return DropdownMenuItem(
                                            //     value: value.id,
                                            //     child: Text(
                                            //       value.accDetailName.toString(),
                                            //       style: GoogleFonts.mulish(
                                            //         textStyle: TextStyle(
                                            //           fontSize: 15.sp,
                                            //           fontWeight: FontWeight.w600,
                                            //           color:
                                            //               const Color(0xff626262),
                                            //         ),
                                            //       ),
                                            //     ),
                                            //   );
                                            // }).toList(),
                                          )),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      fieldName("Sub Allowance"),
                                      SizedBox(height: 5.h),
                                      Container(
                                        height: 46.h,
                                        width: 170.w,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(
                                            color: const Color(0xffB8D0D6),
                                            width: 1.sp,
                                          ),
                                          color: const Color(0xffF8FBFF),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 11.w),
                                        child: DropdownButton2<dynamic>(
                                          underline: Container(),
                                          icon: const Icon(
                                            Icons.keyboard_arrow_down_outlined,
                                            color: Color(0xff7EA4AD),
                                          ),
                                          iconEnabledColor: Colors.white,
                                          // onChanged: (value) {
                                          //   controller.subAllowanceDropDown =
                                          //       value;
                                          //   controller.update();
                                          // },
                                          isExpanded: true,
                                          //value: controller.subAllowanceDropDown,
                                          items: []
                                          // controller
                                          //     .subAllowanceModel.data!
                                          //     .map<DropdownMenuItem>((value) {
                                          //   return DropdownMenuItem(
                                          //     value: value.id,
                                          //     child: Text(
                                          //       value.accChartName.toString(),
                                          //       style: GoogleFonts.mulish(
                                          //         textStyle: TextStyle(
                                          //           fontSize: 15.sp,
                                          //           fontWeight: FontWeight.w600,
                                          //           color:
                                          //               const Color(0xff626262),
                                          //         ),
                                          //       ),
                                          //     ),
                                          //   );
                                          // }).toList(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 17.h),
                              fieldName("Fund Source"),
                              SizedBox(height: 5.h),
                              Container(
                                height: 46.h,
                                width: 1.sw,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: const Color(0xffB8D0D6),
                                    width: 1.sp,
                                  ),
                                  color: const Color(0xffF8FBFF),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 11.w),
                                child: DropdownButton2<dynamic>(
                                  underline: Container(),
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: Color(0xff7EA4AD),
                                  ),
                                  iconEnabledColor: Colors.white,
                                  // onChanged: (value) {
                                  //   controller.fundSourceDropDown = value;
                                  //   controller.update();
                                  // },
                                  isExpanded: true,
                                  //value: controller.fundSourceDropDown,
                                  items: []
                                  // controller.fundSourceModel.data!
                                  //     .map<DropdownMenuItem>((value) {
                                  //   return DropdownMenuItem(
                                  //     value: value.id,
                                  //     child: Text(
                                  //       value.accChartName.toString(),
                                  //       style: GoogleFonts.mulish(
                                  //         textStyle: TextStyle(
                                  //           fontSize: 15.sp,
                                  //           fontWeight: FontWeight.w600,
                                  //           color: const Color(0xff626262),
                                  //         ),
                                  //       ),
                                  //     ),
                                  //   );
                                  // }).toList(),
                                ),
                              ),
                              SizedBox(height: 20.h),
                              Container(
                                width: 1.sw,
                                height: 60.h,
                                decoration: BoxDecoration(
                                  color: custom_blue,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                padding: EdgeInsets.symmetric(
                                  vertical: 8.h,
                                ).copyWith(
                                  left: 13.w,
                                  right: 8.w,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Enter Amount",
                                      style: GoogleFonts.mulish(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      height: 45.h,
                                      width: 107.w,
                                      color: const Color(0xffD8EBFF),
                                      child: Center(
                                        child: TextFormField(
                                          //controller: controller.amountController,
                                          style: GoogleFonts.roboto(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xff59597C),
                                          ),
                                          inputFormatters: [
                                            FilteringTextInputFormatter
                                                .digitsOnly,
                                          ],
                                          keyboardType: const TextInputType
                                              .numberWithOptions(decimal: false),
                                          textAlign: TextAlign.center,
                                          decoration: const InputDecoration(
                                              border: InputBorder.none,
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      vertical: 0)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 17.h),
                              fieldName("Add Comment"),
                              SizedBox(height: 5.h),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: const Color(0xffB8D0D6),
                                    width: 1.sp,
                                  ),
                                  color: const Color(0xffF8FBFF),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 11.w),
                                child: TextFormField(
                                  //controller: controller.commentController,
                                  style: GoogleFonts.roboto(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff626262),
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Type Here",
                                    hintStyle: GoogleFonts.mulish(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff959FB4),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 35.h),
                              Center(
                                child: MaterialButton(
                                  onPressed: () async {

                                    // if(controller.expense_status == 1){

                                    // }else {
                                    //   controller.expense_status = 1;
                                    //   if (controller.allowanceDropDown != null &&
                                    //       controller.allowanceDropDown != '0' &&
                                    //       controller.allowanceDropDown !=
                                    //           'Select' &&
                                    //       controller.subAllowanceDropDown !=
                                    //           null &&
                                    //       controller.subAllowanceDropDown !=
                                    //           '0' &&
                                    //       controller.subAllowanceDropDown !=
                                    //           'Select' &&
                                    //       controller.fundSourceDropDown != null &&
                                    //       controller
                                    //           .amountController.text.isNotEmpty &&
                                    //       controller
                                    //           .commentController.text
                                    //           .isNotEmpty) {
                                    //     await controller.apiAddExpense();
                                    //     controller.reset();
                                    //     Get.dialog(transferredDialog());
                                    //     controller.apiViewExpense();
                                    //   } else
                                    //   if (controller.allowanceDropDown == null ||
                                    //       controller.allowanceDropDown == '0' ||
                                    //       controller.allowanceDropDown ==
                                    //           'Select') {
                                    //     Fluttertoast.showToast(
                                    //       msg: "Select an allowance",
                                    //       toastLength: Toast.LENGTH_LONG,
                                    //       gravity: ToastGravity.BOTTOM,
                                    //       timeInSecForIosWeb: 1,
                                    //       backgroundColor: Colors.red,
                                    //       textColor: Colors.white,
                                    //       fontSize: 16.sp,
                                    //     );
                                    //   } else
                                    //   if (controller.subAllowanceDropDown ==
                                    //       null ||
                                    //       controller.subAllowanceDropDown ==
                                    //           '0' ||
                                    //       controller.subAllowanceDropDown ==
                                    //           'Select') {
                                    //     Fluttertoast.showToast(
                                    //       msg: "Select a sub-allowance",
                                    //       toastLength: Toast.LENGTH_LONG,
                                    //       gravity: ToastGravity.BOTTOM,
                                    //       timeInSecForIosWeb: 1,
                                    //       backgroundColor: Colors.red,
                                    //       textColor: Colors.white,
                                    //       fontSize: 16.sp,
                                    //     );
                                    //   } else
                                    //   if (controller.fundSourceDropDown == null) {
                                    //     Fluttertoast.showToast(
                                    //       msg: "Choose any of the fund source",
                                    //       toastLength: Toast.LENGTH_LONG,
                                    //       gravity: ToastGravity.BOTTOM,
                                    //       timeInSecForIosWeb: 1,
                                    //       backgroundColor: Colors.red,
                                    //       textColor: Colors.white,
                                    //       fontSize: 16.sp,
                                    //     );
                                    //   } else if (controller
                                    //       .amountController.text.isEmpty) {
                                    //     Fluttertoast.showToast(
                                    //       msg: "Please enter Amount",
                                    //       toastLength: Toast.LENGTH_LONG,
                                    //       gravity: ToastGravity.BOTTOM,
                                    //       timeInSecForIosWeb: 1,
                                    //       backgroundColor: Colors.red,
                                    //       textColor: Colors.white,
                                    //       fontSize: 16.sp,
                                    //     );
                                    //   } else if (controller
                                    //       .commentController.text.isEmpty) {
                                    //     Fluttertoast.showToast(
                                    //       msg: "Please enter Comment",
                                    //       toastLength: Toast.LENGTH_LONG,
                                    //       gravity: ToastGravity.BOTTOM,
                                    //       timeInSecForIosWeb: 1,
                                    //       backgroundColor: Colors.red,
                                    //       textColor: Colors.white,
                                    //       fontSize: 16.sp,
                                    //     );
                                    //   }
                                    // }
                                  },
                                  color: custom_orange,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  height: 45.h,
                                  minWidth: 210.w,
                                  child: Text(
                                    "Transfer",
                                    style: GoogleFonts.roboto(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 58.h),
                            ],
                          ),
                        ),
                        Visibility(
                         // visible: controller.allExpensesModel.data != null,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(children: [
                              Container(
                                height: 47.h,
                                width: 1.sw,
                                color: const Color(0xffF9F9F9),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Previous Transactions",
                                        style: GoogleFonts.mulish(
                                          fontWeight: FontWeight.w700,
                                          color: const Color(0xff3FA54A),
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Get.to(() => AllExpenses());
                                        },
                                        child: Text(
                                          "View All",
                                          style: GoogleFonts.mulish(
                                            fontWeight: FontWeight.w700,
                                            color: const Color(0xff5E88E5),
                                            fontSize: 13.sp,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 24.h),
                              // controller.isLoading2
                              //     ? const SizedBox()
                                  Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.w),
                                child: ListView.separated(
                                  itemCount:5,
                                      // controller.allExpensesModel.data!.length > 5
                                      //     ? 5
                                      //     : controller
                                      //         .allExpensesModel.data!.length,
                                  shrinkWrap: true,
                                  physics: const ScrollPhysics(),
                                  separatorBuilder: (context, index) {
                                    return Divider(
                                      height: 36.h,
                                      thickness: 0.3.sp,
                                      color: const Color(0xff8A8A8A),
                                    );
                                  },
                                  itemBuilder: (BuildContext context, int index) {
                                    // var data =
                                    //     controller.allExpensesModel.data![index];
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Custom Charge',
                                              style: GoogleFonts.mulish(
                                                fontWeight: FontWeight.w600,
                                                color: const Color(0xff59597C),
                                                fontSize: 15.sp,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 4.h,
                                            ),
                                            Text('23.10.2022, 11:30 AM',
                                              //"${data.incomeExpenseDate}, ${controller.formatTime(data.incomeExpenseTime!)}",
                                              style: GoogleFonts.mulish(
                                                fontWeight: FontWeight.w600,
                                                color: const Color(0xff969696),
                                                fontSize: 13.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              "OMR 200.00",
                                              style: GoogleFonts.roboto(
                                                fontWeight: FontWeight.w500,
                                                color: const Color(0xff59597C),
                                                fontSize: 15.sp,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 3.h,
                                            ),
                                            Text("Approved",
                                              // data.incomeExpenseApproveStatus
                                              //     .toString(),
                                               style: GoogleFonts.mulish(
                                                 fontWeight: FontWeight.w600,
                                                 color:
                                              //       data.incomeExpenseApproveStatus ==
                                              //               "Pending"
                                              //           ? const Color(0xffED7D2B)
                                              //           : data.incomeExpenseApproveStatus ==
                                                      //  "Approved"
                                                         const Color(0xff3FA54A),
                                                        //:const Color(0xffdc0a0a),
                                                fontSize: 13.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ]),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
        ),
      );    
  }
  Widget fieldName(String fieldName) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 11.w),
    child: Text(
      fieldName.tr,
      style: GoogleFonts.mulish(
        fontWeight: FontWeight.w400,
        fontSize: 13.sp,
        color: const Color(0xff959FB4),
      ),
    ),
  );
}

  transferredDialog() {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: SizedBox(
        width: 290.w,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w).copyWith(
            top: 20.h,
            bottom: 15.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 55.r,
                width: 55.r,
                child: Image.asset("assets/images/logo.png"),
              ),
              SizedBox(height: 15.h),
              Text(
                "Expense Applied",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                  color: custom_green,
                ),
              ),
              // SizedBox(height: 15.h),
              const Divider(
                color: Colors.grey,
              ),
              Text(
                "You have successfully applied for the expense.",
                style: GoogleFonts.mulish(
                  fontWeight: FontWeight.w600,
                  fontSize: 15.sp,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25.h),
              MaterialButton(
                onPressed: () {
                  Get.back();
                },
                color: const Color(0xff3FA54A),
                minWidth: 223.w,
                height: 46.h,
                child: Text(
                  "Ok",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp,
                    color: Colors.white,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Dropdown extends StatefulWidget {
  const Dropdown(
      {Key? key,
      this.isExpanded,
      required this.initialValue,
      required this.dropdownList})
      : super(key: key);

  final dynamic initialValue;
  final List<dynamic> dropdownList;
  final bool? isExpanded;

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  dynamic iniVal;
  List<dynamic> drList = [];
  bool? expanded;

  @override
  void initState() {
    super.initState();
    iniVal = widget.initialValue;
    drList = widget.dropdownList;
    expanded = widget.isExpanded;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton2<dynamic>(
      underline: Container(),
      icon: const Icon(
        Icons.keyboard_arrow_down_outlined,
        color: Color(0xff7EA4AD),
      ),
      iconEnabledColor: Colors.white,
      onChanged: (value) {
        setState(() {
          iniVal = value;
        });
      },
      isExpanded: expanded!,
      value: iniVal,
      items: drList.map<DropdownMenuItem>((value) {
        return DropdownMenuItem(
          value: value,
          child: Text(
            value.toString(),
            style: GoogleFonts.mulish(
              textStyle: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xff626262),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
