import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CargoType extends StatefulWidget {
  const CargoType({super.key});

  @override
  State<CargoType> createState() => _CargoTypeState();
}

class _CargoTypeState extends State<CargoType> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: containerColorblue,
                  border: Border.all(width: 1, color: searchoutline),
                  borderRadius: BorderRadius.circular(4)),
              height: 40,
              child: Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset(
                        search,
                        height: 22,
                        color: Color(0xFFC4C4C4),
                      )),
                  VerticalDivider(
                    indent: 6,
                    endIndent: 4,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Type here',
                            hintStyle: GoogleFonts.mulish(
                                color: typehere,
                                fontSize: 14,
                                fontWeight: FontWeight.w700)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 250.0, // Change as per your requirement
              width: 280.0, // Change as per your requirement
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return  Container(
                    width: 320,
                    height: 55,
                    //color: custom_orange,
                    child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //  Text('AIR CARGO $index'),
                              InkWell(
                                onTap: () => Navigator.pop(context),
                                child: Text(
                                  'AIR CARGO ',
                                  style: GoogleFonts.mulish(
                                    color: Color(0xFF474747),
                                      fontSize: 18, fontWeight: FontWeight.w700),
                                ),
                              ),
                              Image.asset(flighticon)
                            ],
                          ),
                  );
                        
                     
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
