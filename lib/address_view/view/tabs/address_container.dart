// ignore_for_file: must_be_immutable

import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:flutter/material.dart';

class AddressContainer extends StatefulWidget {
  String name;
  String number;
  String Address;
  AddressContainer(
      {super.key,
      required this.name,
      required this.number,
      required this.Address});

  @override
  State<AddressContainer> createState() => _AddressContainerState();
}

class _AddressContainerState extends State<AddressContainer> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: containerColorblue,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1, color: containerBorderColorblue)),
          child: Stack(
            children: [
              //default
    
              Positioned(
                  top: 5,
                  right: 5,
                  child: Container(
                    // padding: EdgeInsets.all(8),
                    height: MediaQuery.of(context).size.height / 38,
                    width: MediaQuery.of(context).size.width / 6,
                    decoration: BoxDecoration(
                      color: containerblue,
                      borderRadius: BorderRadius.circular(5),
                      // border: Border.all(
                      //     width: 1, color: containerBorderColorblue)
                    ),
                    child: Center(
                      child: Text(
                        "Default",
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ),
                  )),
    
              //text
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.name,
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0),
                      child: Text(widget.number,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        widget.Address,
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
