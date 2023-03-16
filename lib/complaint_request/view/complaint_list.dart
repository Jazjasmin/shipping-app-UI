import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/image.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ComplaintListView extends StatelessWidget {
  ComplaintListView({Key? key}) : super(key: key);
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 15.0, left: 15, right: 15, bottom: 7),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 21,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xFF5E88E5)),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Date: 25.08.2021, Time: 11.22 AM",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFFFFFFF)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 75,
                  ),
                  const SizedBox(
                    width: 25,
                    height: 25,
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFA9A9A9),
                      radius: 10,
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 11,
                          child: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 20,
                            color: Color(0xFFA9A9A9),
                          )),
                    ),
                  ),
                ]),
          ),
          ExpansionTile(
            title: SizedBox(
              width: 170,
              height: 25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    " Staff:",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF626262)),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Jithina",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF59597C)),
                  )
                ],
              ),
            ),
            subtitle: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25,
                  width: 140,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Complaint Boxes :",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF626262)),
                      ),
                      Text(
                        "2/3",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF626262)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                  width: 140,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Category :",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF626262)),
                      ),
                      Text(
                        "Broken",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF626262)),
                      )
                    ],
                  ),
                ),
              ],
            ),
            trailing: Wrap(
              spacing: 5,
              children: [
                Container(
                    height: 30,
                    width: 97,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFFFFE6D5),
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text(
                              "Processing",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF8A4D27)),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Icon(
                              Icons.circle,
                              color: Color(0xFFED7D2B),
                              size: 10,
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
            children: const [
              TimeLineTileWidget(),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 15.0, left: 15, right: 15, bottom: 7),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 21,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xFF5E88E5)),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Date: 25.08.2021, Time: 11.22 AM",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFFFFFFF)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 75,
                  ),
                  const SizedBox(
                    width: 25,
                    height: 25,
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFA9A9A9),
                      radius: 10,
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 11,
                          child: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 20,
                            color: Color(0xFFA9A9A9),
                          )),
                    ),
                  ),
                ]),
          ),
          ExpansionTile(
            title: SizedBox(
              width: 170,
              height: 25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    " Staff:",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF626262)),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Jithina",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF59597C)),
                  )
                ],
              ),
            ),
            subtitle: Column(
              children: [
                SizedBox(
                  height: 25,
                  width: 140,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Complaint Boxes :",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF626262)),
                      ),
                      Text(
                        "2/3",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF626262)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                  width: 140,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Category :",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF626262)),
                      ),
                      Text(
                        "Broken",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF626262)),
                      )
                    ],
                  ),
                ),
              ],
            ),
            trailing: Wrap(
              spacing: 5,
              children: [
                Container(
                    height: 30,
                    width: 97,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFFE5FFE9),
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(left: 7.0, right: 7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text(
                              "Solved",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF337C3B)),
                            ),
                            // const SizedBox(
                            //   width: 3,
                            // ),
                            Icon(
                              Icons.circle,
                              color: Color(0xFF3FA54A),
                              size: 10,
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
            children: const [
              TimeLineTileWidget(),
              SizedBox(
                height: 10,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TimeLineTileWidget extends StatelessWidget {
  const TimeLineTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              //color: listviewgrey,
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        // top: 12,
                        //bottom: 12,
                        // left: 30,
                        ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 15, top: 17),
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //num

                              Text(
                                "OD 235-415-421",
                                style: TextStyle(
                                    color: black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              //country
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Image.asset(
                                      flag1,
                                      height: 18,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Text(
                                      "OMAN",
                                      style: TextStyle(
                                          color: grey2,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Image.asset(
                                      flight,
                                      height: 18,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Text(
                                      "DUBAI",
                                      style: TextStyle(
                                          color: grey2,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Image.asset(
                                      flag,
                                      height: 18,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      right: 15,
                      top: 20,
                      child: Container(
                          height: MediaQuery.of(context).size.height / 32,
                          width: MediaQuery.of(context).size.width / 6,
                          decoration: BoxDecoration(
                            color: containerbrown,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "48 KG",
                                style: TextStyle(
                                    color: orangefont,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ))),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.43,
              indicatorStyle: const IndicatorStyle(
                color: Color(0xFF5E88E5),
                width: 12,
                height: 12,
              ),
              beforeLineStyle: const LineStyle(
                color: Color(0xFFAEC3FF),
                thickness: 2,
              ),
              endChild: Container(
                constraints: const BoxConstraints(
                  minHeight: 50,
                  // minWidth: 410,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Text(
                    "Complient Solved",
                    style: TextStyle(
                        color: Color(0xFF474747),
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              startChild: Container(
                constraints: const BoxConstraints(
                  minHeight: 50,
                  //minWidth: 100,
                ),
                child: Row(children: const [
                  Text(
                    "10.09.2021",
                    style: TextStyle(
                        color: Color(0xFF474747),
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    ",",
                    style: TextStyle(
                        color: Color(0xFF474747),
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "10:30:12",
                    style: TextStyle(
                        color: Color(0xFF474747),
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                ]),
              ),
            ),
            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.43,
              indicatorStyle: const IndicatorStyle(
                color: Color(0xFF5E88E5),
                width: 12,
                height: 12,
              ),
              beforeLineStyle: const LineStyle(
                color: Color(0xFFAEC3FF),
                thickness: 2,
              ),
              endChild: Container(
                constraints: const BoxConstraints(
                  minHeight: 50,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Text(
                    "Information Passed to Jithna",
                    //overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Color(0xFF474747),
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              startChild: Container(
                constraints: const BoxConstraints(
                  minHeight: 50,
                ),
                child: Row(children: const [
                  Text(
                    "10.09.2021",
                    style: TextStyle(
                        color: Color(0xFF474747),
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    ",",
                    style: TextStyle(
                        color: Color(0xFF474747),
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "10:30:12",
                    style: TextStyle(
                        color: Color(0xFF474747),
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                ]),
              ),
            ),
            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.43,
              indicatorStyle: const IndicatorStyle(
                color: Color(0xFF5E88E5),
                width: 12,
                height: 12,
              ),
              beforeLineStyle: const LineStyle(
                color: Color(0xFFAEC3FF),
                thickness: 2,
              ),
              endChild: Container(
                constraints: const BoxConstraints(
                  minHeight: 50,
                ),
                child: Text(
                  "No Response",
                  style: TextStyle(
                      color: Color(0xFF474747),
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
              ),
              startChild: Container(
                constraints: const BoxConstraints(
                  minHeight: 50,
                ),
                child: Row(children: const [
                  Text(
                    "10.09.2021",
                    style: TextStyle(
                        color: Color(0xFF474747),
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    ",",
                    style: TextStyle(
                        color: Color(0xFF474747),
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "10:30:12",
                    style: TextStyle(
                        color: Color(0xFF474747),
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                ]),
              ),
            ),
          ]),
    );
  }
}
