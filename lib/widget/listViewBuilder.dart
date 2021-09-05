import 'package:community_material_icon/community_material_icon.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class ListViewBuilder extends StatelessWidget {
  final List<Map<dynamic,dynamic>> info;

  const ListViewBuilder({this.info});

  Widget hashtagFunction(String hashTag){
    return Container(
        padding: EdgeInsets.fromLTRB(10, 7, 10, 7),
        decoration: BoxDecoration(
            color: GreenColor,
            borderRadius: BorderRadius.circular(18)),
        child: Center(child: Text(hashTag,style: TextStyle(color: w,fontSize: 10),)));
  }


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: info.length,
        padding: EdgeInsets.all(5),
        itemBuilder: (_, index) {
          return Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,15,5,10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                          height: 110,
                          width: 110,
                          child: Image.asset(
                            info[index]["image"],
                            fit: BoxFit.cover,
                          )),
                    ),
                  ), // the image
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,15,5,0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ...(info[index]["hashtags"]).map((value) {
                              return Row(children: [
                                hashtagFunction(value),
                                SizedBox(width: 5,),
                              ],);})//here the value will take each element of the Matrix that its key call "hashtags"
                          ],
                        ), // HashTags
                        SizedBox(height: 13,),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                width: 210,
                                child: Text("${info[index]["title"]}", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold,color: b),)),
                          ],
                        ), // Title
                        SizedBox(height: 8,),
                        Row(children: [Text("${DateFormat.yMd().format(info[index]["Date"])}",style: TextStyle(color: g),)],), // Time
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Icon(CommunityMaterialIcons.feather,color: g,size: 20,),
                            SizedBox(width: 5,),
                            Text("Logan",style: TextStyle(color: g),),
                            SizedBox(width: 20,),
                            Icon(Icons.messenger_outline_rounded, color: g,size: 17,),
                            SizedBox(width: 5,),
                            Text("${info[index]["MSG"]}",style: TextStyle(color: g),),
                          ],
                        ),
                      ],
                    ),
                  ), //the right side
                ],
              ),
              SizedBox(height: 15,),
              Divider(color: g,)
            ],
          );
        }
    );
  }
}
