import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Drinkmenu extends StatefulWidget {
  const Drinkmenu({Key key}) : super(key: key);

  @override
  State<Drinkmenu> createState() => _DrinkmenuState();
}

class _DrinkmenuState extends State<Drinkmenu> {
  List<List<dynamic>> drinklists = [
    [
      "https://pbs.twimg.com/media/FctCb3MaUAExB6U?format=jpg&name=large",
      "เค้กช็อตโกแลตครีม",
      "อร่อยจนต้องซื้อใหม่ เพราะทำตก", "80 บาท"
      
    ],
    [
      "https://pbs.twimg.com/media/FdBwVo4aUAYFm3y?format=jpg&name=large",
      "strawberry cheesecake",
     "ต้องทำใจก่อนกิน เพราะน้องน่ารักมากก" ,
      "80 บาท"
    ],
    [
      "https://pbs.twimg.com/media/FdGagiEakAEW34X?format=jpg&name=large",
      "ชีสเค้กส้มยูซุ",
      "เป็นทรงดอกไม้คล้ายดอกเดซี่ แล้วตัวชีสเค้กโคตรรรรอร่อย อร่อยแบบกินไปยิ้มไปด้วยความปริ่ม",
       "80 บาท"
    ],
    [
      "https://pbs.twimg.com/media/FcrwbjNaIAUigd7?format=jpg&name=large",
      " เค้ก cinnamon กับถั่ว walnut",
      "โล้นๆก็มี บีบครีมก็มี",
       "80 บาท"
    ],
    [
      "https://pbs.twimg.com/media/Fclk2yZacAITSWM?format=jpg&name=large",
      "คาราแมวคัสตาร์ดเค้ก",
     "เค้กไข่บ้านป้า" ,
       "80 บาท"
    ],
    [
      "https://pbs.twimg.com/media/FdOZGQhUYAApYmX?format=jpg&name=large",
      "chocolate flan cake ",
      "หน้าครีมคัสตาร์ดแบบหนาๆ กับเค้กกล้วยหอมอัพไซด์ดาวน์ที่หน้าตาเหมือนกล่องข้าวหน้าปลาไหล",
       "80 บาท"
    ],
    [
      "https://pbs.twimg.com/media/Fcq4IUXaIAEJtaD?format=jpg&name=large",
      "เค้กกล้วยหอม",
      "เค้กกล้วยหอมอีกแล้ว กับชอคโกแลตคลาวด์เค้ก" ,
      "80 บาท"
    ],
    [
      "https://pbs.twimg.com/media/FcoL42JacAI6Svr?format=jpg&name=large",
      "Peony",
      "ครีมเค้กเบามาก ไม่หวานไปตัดกับความเปรี้ยวนิดๆของสตรอว์เบอร์รี่",
       "80 บาท"
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: drinklists.length,
        itemBuilder: (_, index) {
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
              height: 200,
              width: double.infinity,
              child: Stack(children: [
                Row(
                  children: [
                    Image.network(
                      drinklists[index][0],
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
                                "${drinklists[index][1]}",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "${drinklists[index][2]} ",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(255, 129, 19, 98),
                                ),
                              ),
                              Text(
                                "${drinklists[index][3]}",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              )
                            ]),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  alignment: Alignment.bottomRight,
                  child: Chip(
                      backgroundColor: Color.fromARGB(255, 219, 58, 136),
                      label: Text(
                        "สั่งเลย",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      )),
                ),
              ]),
            ),
          );
        });
  }
}
