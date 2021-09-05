import '../model/information_File.dart';
import '../main.dart';
import '../widget/listViewBuilder.dart';
import 'package:flutter/material.dart';
import 'package:community_material_icon/community_material_icon.dart';



class mainScreen extends StatefulWidget {
  @override
  _mainScreenState createState() => _mainScreenState();
}


class _mainScreenState extends State<mainScreen> {
  List<Map<dynamic,dynamic>>  info=information;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Latest News",style: TextStyle(color: b),),
        backgroundColor: bodyColor,
        leading: Icon(Icons.arrow_back_ios,color: b,),
        actions: [Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search_rounded,color: b,),
          ),],
        elevation: 0,
      ),
      body: Container(
        color: bodyColor,
        child: Column(
          children: [
            Container(
              color: bannerColor,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      TextButton(onPressed: () {
                        setState(() {
                          w==Color(0xff181818)? w=Colors.white:w=Color(0xff181818);
                          g==Colors.white? g=Color(0xff181818):g=Colors.white;
                          b==Colors.white? b=Color(0xff181818):b=Colors.white;
                          GreenColor==Color(0xff52BE80)? GreenColor=Color(0xff24bc47):GreenColor=Color(0xff52BE80);
                          Gray==Colors.white? Gray= Color(0xff586878):Gray=Colors.white;
                          bannerColor==Color(0xff181818)? bannerColor=Color(0xffECECEC):bannerColor=Color(0xff181818);
                          bodyColor==Color(0xff202022)? bodyColor=Colors.white:bodyColor=Color(0xff202022);

                        });
                      },


                        child: Row(children: [Icon(Icons.sort_rounded),SizedBox(width: 7,),Text("Sort",style: TextStyle(color: Gray),)],),),
                      TextButton(onPressed: (){}, child: Row(children: [Icon(CommunityMaterialIcons.tune_vertical),SizedBox(width: 7,),Text("Refine",style: TextStyle(color: Gray),)],),),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 35,
                        child: IconButton(onPressed:(){},icon:Icon(Icons.check_box_outline_blank),color: Gray,),
                      ),
                      SizedBox(
                        width: 40,
                        child: IconButton(onPressed:(){},icon:Icon(Icons.list,),color: bl,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                child: ListViewBuilder(info: info,)
            )
          ],
        ),
      ),
    );
  }
}
