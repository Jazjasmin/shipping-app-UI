import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressStepper extends StatelessWidget {
  const AddressStepper({
    super.key,
    required this.width,
  });
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: this.width,
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Row(children: [
              
              Container(
                  width: 20.0,
                  height: 20.0,
                  padding: EdgeInsets.all(0),
                  decoration: new BoxDecoration(
                    /* color: circleColor,*/
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(22.0)),
                    border: new Border.all(
                      color: custom_orange,
                      width: 2.0,
                    ),
                  ),
                  child: Icon(
                    Icons.circle,
                    color: custom_orange,
                    size: 12.0,
                  )),
              Dash(
                direction: Axis.horizontal,
                length: 110,
                dashLength: 15,
                dashColor: Colors.grey,
                // height: lineWidth,
                // color: lineColor,
              ),
              Container(
                  width: 20.0,
                  height: 20.0,
                  padding: EdgeInsets.all(0),
                  decoration: new BoxDecoration(
                    /* color: circleColor,*/
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(22.0)),
                    border: new Border.all(
                      color: Color(0xffD0D0D0),
                      width: 2.0,
                    ),
                  ),
                  child: Icon(
                    Icons.circle,
                    color: Color(0xffD0D0D0),
                    size: 12.0,
                  )),
              Dash(
                direction: Axis.horizontal,
                length: 110,
                dashLength: 15,
                dashColor: Colors.grey,
                // height: lineWidth,
                // color: lineColor,
              ),
              Container(
                  width: 20.0,
                  height: 20.0,
                  padding: EdgeInsets.all(0),
                  decoration: new BoxDecoration(
                    /* color: circleColor,*/
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(22.0)),
                    border: new Border.all(
                      color: Color(0xffD0D0D0),
                      width: 2.0,
                    ),
                  ),
                  child: Icon(
                    Icons.circle,
                    color: Color(0xffD0D0D0),
                    size: 12.0,
                  )),
            ]),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 86,
                height: 16 ,
                child: Text("Add Address",
                style: GoogleFonts.mulish(
                  color: custom_orange,
                  fontSize: 14,
                  fontWeight: FontWeight.w600
                ),),
              ),
              SizedBox(
                width: 101,
                height: 16 ,
                child: Text("Shipper Details",
                style: GoogleFonts.mulish(
                  color: Color(0xffD0D0D0),
                  fontSize: 14,
                  fontWeight: FontWeight.w600
                ),),
              ),
              SizedBox(
                width: 118,
                height: 16 ,
                child: Text("Consignee Details",
                style: GoogleFonts.mulish(
                  color: Color(0xffD0D0D0),
                  fontSize: 14,
                  fontWeight: FontWeight.w600
                ),),
              )
            ],
          )
        ]));
  }
}

class ShipperStepper extends StatelessWidget {
  const ShipperStepper({
    super.key,
    required this.width,
  });
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: this.width,
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Row(children: [
              Container(
                  width: 20.0,
                  height: 20.0,
                  padding: EdgeInsets.all(0),
                  decoration: new BoxDecoration(
                    color: custom_orange,
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(22.0)),
                    border: new Border.all(
                      color: custom_orange,
                      width: 2.0,
                    ),
                  ),
                  child: Icon(
                    Icons.check,
                    color: custom_white,
                    size: 12.0,
                  )),
              Dash(
                direction: Axis.horizontal,
                length: 110,
                dashLength: 15,
                dashColor: Colors.grey,
                // height: lineWidth,
                // color: lineColor,
              ),
              Container(
                  width: 20.0,
                  height: 20.0,
                  padding: EdgeInsets.all(0),
                  decoration: new BoxDecoration(
                    /* color: circleColor,*/
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(22.0)),
                    border: new Border.all(
                      color: custom_orange,
                      width: 2.0,
                    ),
                  ),
                  child: Icon(
                    Icons.circle,
                    color: custom_orange,
                    size: 12.0,
                  )),
              Dash(
                direction: Axis.horizontal,
                length: 110,
                dashLength: 15,
                dashColor: Colors.grey,
                // height: lineWidth,
                // color: lineColor,
              ),
              Container(
                  width: 20.0,
                  height: 20.0,
                  padding: EdgeInsets.all(0),
                  decoration: new BoxDecoration(
                    /* color: circleColor,*/
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(22.0)),
                    border: new Border.all(
                      color: Color(0xffD0D0D0),
                      width: 2.0,
                    ),
                  ),
                  child: Icon(
                    Icons.circle,
                    color: Color(0xffD0D0D0),
                    size: 12.0,
                  )),
            ]),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 86,
                height: 16 ,
                child: Text("Add Address",
                style: GoogleFonts.mulish(
                  color: custom_orange,
                  fontSize: 14,
                  fontWeight: FontWeight.w600
                ),),
              ),
              SizedBox(
                width: 101,
                height: 16 ,
                child: Text("Shipper Details",
                style: GoogleFonts.mulish(
                  color: custom_orange,
                  fontSize: 14,
                  fontWeight: FontWeight.w600
                ),),
              ),
              SizedBox(
                width: 118,
                height: 16 ,
                child: Text("Consignee Details",
                style: GoogleFonts.mulish(
                  color: Color(0xffD0D0D0),
                  fontSize: 14,
                  fontWeight: FontWeight.w600
                ),),
              )
            ],
          )
        ]));
  }
}

class ConsigneeStepper extends StatelessWidget {
  const ConsigneeStepper({
    super.key,
    required this.width,
  });
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: this.width,
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Row(children: [
              Container(
                  width: 20.0,
                  height: 20.0,
                  padding: EdgeInsets.all(0),
                  decoration: new BoxDecoration(
                    color: custom_orange,
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(22.0)),
                    border: new Border.all(
                      color: custom_orange,
                      width: 2.0,
                    ),
                  ),
                  child: Icon(
                    Icons.check,
                    color: custom_white,
                    size: 12.0,
                  )),
              Dash(
                direction: Axis.horizontal,
                length: 110,
                dashLength: 15,
                dashColor: Colors.grey,
                // height: lineWidth,
                // color: lineColor,
              ),
              Container(
                  width: 20.0,
                  height: 20.0,
                  padding: EdgeInsets.all(0),
                  decoration: new BoxDecoration(
                    color: custom_orange,
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(22.0)),
                    border: new Border.all(
                      color: custom_orange,
                      width: 2.0,
                    ),
                  ),
                  child: Icon(
                    Icons.check,
                    color: custom_white,
                    size: 12.0,
                  )),
              Dash(
                direction: Axis.horizontal,
                length: 110,
                dashLength: 15,
                dashColor: Colors.grey,
                // height: lineWidth,
                // color: lineColor,
              ),
              Container(
                  width: 20.0,
                  height: 20.0,
                  padding: EdgeInsets.all(0),
                  decoration: new BoxDecoration(
                    /* color: circleColor,*/
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(22.0)),
                    border: new Border.all(
                      color: custom_orange,
                      width: 2.0,
                    ),
                  ),
                  child: Icon(
                    Icons.circle,
                    color: custom_orange,
                    size: 12.0,
                  )),
            ]),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 86,
                height: 16 ,
                child: Text("Add Address",
                style: GoogleFonts.mulish(
                  color: custom_orange,
                  fontSize: 14,
                  fontWeight: FontWeight.w600
                ),),
              ),
              SizedBox(
                width: 101,
                height: 16 ,
                child: Text("Shipper Details",
                style: GoogleFonts.mulish(
                  color: custom_orange,
                  fontSize: 14,
                  fontWeight: FontWeight.w600
                ),),
              ),
              SizedBox(
                width: 118,
                height: 16 ,
                child: Text("Consignee Details",
                style: GoogleFonts.mulish(
                  color: custom_orange,
                  fontSize: 14,
                  fontWeight: FontWeight.w600
                ),),
              )
            ],
          )
        ]));
  }
}

