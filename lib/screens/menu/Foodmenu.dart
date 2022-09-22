import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constants.dart';

class Foodmenu extends StatefulWidget {
  const Foodmenu({Key key}) : super(key: key);

  @override
  State<Foodmenu> createState() => _FoodmenuState();
}

class _FoodmenuState extends State<Foodmenu> {
  List<List<dynamic>> foodlists = [
    [
      "https://pbs.twimg.com/media/FdPwi3NacAEV8SG?format=jpg&name=large",
      "ไข่เจียวหาดใหญ่",
      "ไข่เจียวนุ่มฟูต้นตำรับมาจากหาดใหญ่ที่เป็นหาดไม่เล็ก",
       "80 บาท"
    ],
    [
      "https://pbs.twimg.com/media/FdJY_8MaEAIYlMC?format=jpg&name=large",
      "ไข่กระทะฮาวาย",
      "กระทะฮาวายที่เต็มไปด้วยความเร้าร้อนของทราย",
       "80 บาท"
      
    ],
    [
       "https://pbs.twimg.com/media/Fc5u4MFakAMKsbV?format=jpg&name=large",
      "ไข่ตุ๋นคุณหนู",
      "ไข่ตุ๋นที่ดูน่ารับประทานมีความหอมละมุนของเห็ดที่ไม่ใช่ผัก",
       "80 บาท"
    ],
    [
      "https://pbs.twimg.com/media/EZyXGjSUwAEMohn?format=jpg&name=large",
      "ไข่น้ำทะเล",
      "ไข่น้ำทะเลดังนั้นจะเค็มนิดนึงเพราะเป็นน้ำเค็มไม่ใช่น้ำจืด",
       "80 บาท"
    ],
    [
      "https://pbs.twimg.com/media/EZyXGjSUYAA9J2s?format=jpg&name=large",
      "ไข่ม้วนจวนหิว",
      "ไข่ม้วนต้องเป็นก้อน ถ้าเทอป้อนต้องเป็นเรา",
       "80 บาท"
    ],
    [
      "https://pbs.twimg.com/media/EZyXGjRU8AAIwXn?format=jpg&name=large",
      "ไข่ข้น",
      "ไข่ข้นจนติดคอ",
       "80 บาท"
    ],
    [
      "https://pbs.twimg.com/media/E0cZVm2VkAADqBa?format=jpg&name=large",
      "ไขขะยี้กุ้งกระเทียม",
      "ไขขะยี้กุ้งกระเทียม แต่จะขยี้ใจใครคงทำใจไม่ได้",
       "80 บาท"
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foodlists.length,
      itemBuilder: (_, index) {
        return Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Container(
            height: 200,
            width: double.infinity,
            child: Stack(
              children: [
                Row(
                  children: [
                    Image.network(
                      foodlists[index][0],
                      fit: BoxFit.cover,
                      width: 150,
                    ),
                    Expanded(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${foodlists[index][1]}",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "${foodlists[index][2]} ",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 197, 81, 46),
                                  fontSize: 17,
                                ),
                              ),
                               Text(
                                "${foodlists[index][3]} ",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 228, 184, 39),
                                  fontSize: 17,
                                ),
                              ),
                              
                            ]),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  alignment: Alignment.bottomRight,
                  child: Chip(
                    backgroundColor: Color.fromARGB(255, 213, 152, 45),
                    label: Text(
                      "สั่งเลย",
                      style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
