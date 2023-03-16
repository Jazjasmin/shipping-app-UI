import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/scaffold/scaffold_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Faq extends StatefulWidget {
  const Faq({Key? key}) : super(key: key);

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  List faqData = [];
  bool isLoader = false;
  @override
  void initState() {
    // TODO: implement initState
    //getFaq();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldScreen(
      backgroundColor: custom_white,
      appbarTitle: "FAQ",

      widget: Container(
          child: ListView.builder(
              itemCount: 4, //faqData.length,
              itemBuilder: (context, index) {
                return ExpansionTile(
                  leading: SvgPicture.asset(
                    "assets/svg-icons/faqq.svg",
                    width: 20,
                    height: 20,
                  ),
                  title: Text(
                    "FAQ Question",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 55),
                      child: ListTile(
                          title: Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: SizedBox(
                          width: 280,
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the  release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing  software like Aldus PageMaker including versions of Lorem Ipsum.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff707070),
                            ),
                          ),
                        ),
                      )),
                    ),
                  ],
                );
              })),
      // Column(
      //   children: [
      //
      //     ExpansionTile(
      //       leading: ImageIcon(Svg(Images.faqIcon)),
      //       title: Text(
      //         "What is Lorem Ipsum?",
      //         style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
      //       ),
      //       children: <Widget>[
      //         Padding(
      //           padding: const EdgeInsets.only(left:25),
      //           child: ListTile(
      //             title: Text(
      //               "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
      //               style: TextStyle(fontSize: 15,color:Color(0xff707070)),
      //             ),
      //           ),
      //         )
      //       ],
      //     ),
      //     ExpansionTile(
      //       leading: ImageIcon(Svg(Images.faqIcon)),
      //       title: Text(
      //         "What is Lorem Ipsum?",
      //         style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
      //       ),
      //       children: <Widget>[
      //         Padding(
      //           padding: const EdgeInsets.only(left:25),
      //           child: ListTile(
      //             title: Text(
      //               "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
      //               style: TextStyle(fontSize: 15,color:Color(0xff707070)),
      //             ),
      //           ),
      //         )
      //       ],
      //     ),
      //     ExpansionTile(
      //       leading: ImageIcon(AssetImage(Images.faqIcon)),
      //       title: Text(
      //         "Why do we use it?",
      //         style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
      //       ),
      //       children: <Widget>[
      //         Padding(
      //           padding: const EdgeInsets.only(left:25),
      //           child: ListTile(
      //             title: Text(
      //               "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
      //               style: TextStyle(fontSize: 15,color:Color(0xff707070)),
      //             ),
      //           ),
      //         )
      //       ],
      //     ),
      //     ExpansionTile(
      //       leading: ImageIcon(AssetImage(Images.faqIcon)),
      //       title: Text(
      //         "Where does it come from?",
      //         style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
      //       ),
      //       children: <Widget>[
      //         ListTile(
      //           title: Text(
      //             "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
      //             style: TextStyle(fontSize: 15,color:Color(0xff707070)),
      //           ),
      //         )
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
  // getFaq() async{
  //   setState(() {
  //     isLoader = true;
  //   });
  //   ApiService apiService=ApiService();
  //   await apiService.getFaqList().then((value) {
  //     print("faaaaaaaaaq");
  //     // print(value);
  //     setState(() {
  //       faqData = value['data'];
  //       isLoader = false;
  //       print(faqData);
  //     });
  //   });
  // }
}
