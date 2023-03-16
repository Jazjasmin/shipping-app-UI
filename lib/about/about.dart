import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/scaffold/scaffold_screen.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return ScaffoldScreen(
      backgroundColor: custom_white, 
      appbarTitle: "About Us",
     widget: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: w,
                // height: h*.7,
                child: Image.asset("assets/images/about-us.png",fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "What is Lorem Ipsum?",
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      // Text(
                      //   "with Indiana",
                      //   style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF0774CC)),
                      // ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    textAlign: TextAlign.justify,
                    "          Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham."),
                  SizedBox(height: 24),
                  /*  Text(
                      "Our Team",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF0774CC)),
                    ),
                    SizedBox(height: 8),*/
                  /*  Text(
                      textAlign: TextAlign.justify,
                      "Our team is full of experienced recruiters who can help you find your desired school to make your teaching career more oriented.",
                    ),
                    SizedBox(height: 24),
                    Row(
                      children: [
                        Icon(Icons.check_circle, color: Color(0xFF0774CC),),
                        SizedBox(width: 8),
                        Text(
                          textAlign: TextAlign.justify,
                          "Get connected with the Top leading schools for Teaching.",
                          style: TextStyle(fontSize: 13,),maxLines: 2,overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    )*/
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
